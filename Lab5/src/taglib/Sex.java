package taglib;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.IOException;

public class Sex extends TagSupport {
    private Boolean value = false;

    @Override
    public int doStartTag() throws JspException {
        JspWriter out = pageContext.getOut();
        try {
            String in = "<label>Sex:</label><br/>Male <input name =\"sex\" type = \"radio\" value=\"male\"/>";
            out.print(in);
            in = "<br/>Female <input name =\"sex\" type = \"radio\" value=\"female\"/>";
            out.print(in);
        }
        catch (IOException e) {
            System.out.println("Error Sex: " + e);
        }
        return SKIP_BODY;
    }

    public Boolean getValue() {
        return value;
    }

    public void setValue(Boolean value) {
        this.value = value;
    }
}
