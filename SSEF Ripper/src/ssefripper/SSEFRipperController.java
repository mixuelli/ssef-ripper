/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//read info and feed to model
//update view

package ssefripper;

import com.itextpdf.text.DocumentException;
import com.itextpdf.text.pdf.AcroFields;
import com.itextpdf.text.pdf.PdfReader;
import java.io.*;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Acer
 */
public class SSEFRipperController implements Controller{
    
    View view;
    Model model;
    private String tableName = "";
    
    public SSEFRipperController (View v, Model m){
        view = v;
        model = m;
        try {
            Scanner sc = new Scanner(new BufferedReader(new FileReader("DbTableName.txt")));
            tableName=sc.next();//get table name
        } catch (FileNotFoundException ex) {
            Logger.getLogger(SSEFRipperModel.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void extract(File f[]){
        //read from file
        try {
            
            for(File file:f){    
                    PdfReader reader = new PdfReader(file.getPath());
                    int pages = reader.getNumberOfPages();
                    long id = System.currentTimeMillis();
                    boolean error = false;
                    boolean hasForm = false;
                    for(int i=1;i<=pages;i++){
                        reader = new PdfReader(file.getPath());
                        reader.selectPages(i + "-" + i);//select page
                        AcroFields form = reader.getAcroFields();
                        Set<String> fields = form.getFields().keySet();
                        if(fields.isEmpty()) continue; //skip if there are no fields
                        hasForm= true;
                        ArrayList<String> data = new ArrayList<String>();
                        data.add(tableName+i);
                        data.add(id+"");
                        for (String key : fields) {
                            switch (form.getFieldType(key)) {
                            case AcroFields.FIELD_TYPE_CHECKBOX:
                                if (form.getField(key).equals("Yes"))
                                    data.add("TRUE");
                                else data.add("FALSE");
                                break;
                            case AcroFields.FIELD_TYPE_TEXT:
                                data.add("\'"+form.getField(key)+"\'");
                                break;
                            }
                        }
                        error=(error||!(model.update(data)));
                        
                    }
                    if(error||!hasForm){
                            view.reportError(file.getName());
                    }
            }
         } catch (IOException ex) {
                Logger.getLogger(SSEFRipperController.class.getName()).log(Level.SEVERE, null, ex);
            }
    }
    
}
