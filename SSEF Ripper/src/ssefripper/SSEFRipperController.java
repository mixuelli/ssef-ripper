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
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Acer
 */
public class SSEFRipperController implements Controller{
    
    View view;
    Model model;
    final String TABLENAME = "page";
    
    public SSEFRipperController (View v, Model m){
        view = v;
        model = m;
    }

    public void extract(File f[]){
        //read from file
        try {
            for(File file:f){
                
                    PdfReader reader = new PdfReader(file.getPath());
                    int pages = reader.getNumberOfPages();
                    long id = System.currentTimeMillis();
                    
                    for(int i=1;i<=pages;i++){
                        reader = new PdfReader(file.getPath());
                        reader.selectPages(i + "-" + i);//select page
                        AcroFields form = reader.getAcroFields();
                        Set<String> fields = form.getFields().keySet();
                        if(fields.isEmpty()) continue; //skip if there are no fields
                        ArrayList<String> data = new ArrayList<String>();
                        
                        data.add(TABLENAME+i);
                        data.add(id+"");
                        for (String key : fields) {
                            switch (form.getFieldType(key)) {
                            case AcroFields.FIELD_TYPE_CHECKBOX:
                                if (form.getField(key).equals("Yes"))
                                    data.add("TRUE");
                                else data.add("FALSE");
                                break;
                            case AcroFields.FIELD_TYPE_TEXT:
                                data.add(form.getField(key));
                                break;
                            }
                        }
                        model.update(data);
                    }
            }
         } catch (IOException ex) {
                Logger.getLogger(SSEFRipperController.class.getName()).log(Level.SEVERE, null, ex);
            }
    }
    
}
