import javax.xml.transform.*;
import javax.xml.transform.stream.*;
public class Transform {
  public static void main(String args[]) {
try {
// Get the factory
    TransformerFactory factory = TransformerFactory.newInstance();
 // Get a Transformer to work with, with the options specified
    Transformer transformer = factory.newTransformer(new StreamSource(args[1]));
    transformer.setParameter("sortBy", args[2]);
// Perform transformation on document A, and print out result
    transformer.transform(new StreamSource(args[0]), new StreamResult(System.out));



}catch(Exception e) {}
  }
}