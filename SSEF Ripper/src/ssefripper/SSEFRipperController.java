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
    
    static final String pages= "PageNumber.txt";
    
    View view;
    public SSEFRipperController (View v){
        view = v;
    }

    public void extract(File f[]){
        //read from file
        try {
            for(File file:f){
                
                    PdfReader reader = new PdfReader(file.getPath());
                    
                    
                    AcroFields form = reader.getAcroFields();
                    Set<String> fields = form.getFields().keySet();
                    
                    ArrayList<String> data = new ArrayList<String>();
                    
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

            }
         } catch (IOException ex) {
                Logger.getLogger(SSEFRipperController.class.getName()).log(Level.SEVERE, null, ex);
            }
    }
    
}