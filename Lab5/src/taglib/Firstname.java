package taglib;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.IOException;

public class Firstname extends TagSupport {
    private String value = "";

    @Override
    public int doStartTag() throws JspException {
        JspWriter out = pageContext.getOut();
        try {
            String in = "<label>Lastname</label>"
                    + "<input name =\"firstname\" type = \"text\" width = \"150\" maxlength= \"14\" placeholder = \"Firstname\" ";
            out.print(in + (this.value.equals("") ? " " : "value =\"" + this.value + "\" />"));
        }
        catch (IOException e) {
            System.out.println("Error Firstname: " + e);
        }
        return SKIP_BODY;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }
}
