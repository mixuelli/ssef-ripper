
import javax.swing.JFrame;
import ssefripper.*;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author michelle
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here]
        SSEFRipperView view = new SSEFRipperView();
        SSEFRipperModel model = new SSEFRipperModel();
        SSEFRipperController controller = new SSEFRipperController(view,model);
        view.addController(controller);
        view.setVisible(true);
    }

}
