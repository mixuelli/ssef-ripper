/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//read info and feed to model
//update view

package ssefripper;

import java.util.ArrayList;

/**
 *
 * @author Acer
 */
public class SSEFRipperControl implements Control{
    
    View view;
    public SSEFRipperControl (View v){
        view = v;
    }

    public void extract() {
        ArrayList<String> list=view.getFiles();
        
    }
    
}
