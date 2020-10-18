import cl.CBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = "/Ccc")
public class Ccc extends HttpServlet {
    public CBean cBean;

    @Override
    public void init() throws ServletException {
        cBean = new CBean();
        System.out.println("init");
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("dasd");

        if (req.getParameter("CBean").equals("new")) {
            cBean = new CBean();
            HttpSession httpSession = req.getSession();
            httpSession.setAttribute("atrCBean", cBean);
            System.out.println("Ccc: new: " + req.getAttribute("atrCBean"));

            String param1 = req.getParameter("value1"),
                    param2 = req.getParameter("value2"),
                    param3 = req.getParameter("value3");


            if (param1 != null && param2 != null && param3 != null) {
                cBean.setValue1(param1);
                cBean.setValue2(param2);
                cBean.setValue3(param3);

                PrintWriter printWriter = resp.getWriter();
                printWriter.println(
                        "<br>Value1: " + cBean.getValue1() +
                                "<br>Value2: " + cBean.getValue2() +
                                "<br>Value3: " + cBean.getValue3()
                );
            }
        } else if (req.getParameter("CBean").equals("old")){ //if "old"
            HttpSession httpSession = req.getSession();
            System.out.println("Ccc: old: " + httpSession.getAttribute("atrCBean"));
            cBean = (CBean) httpSession.getAttribute("atrCBean");
            PrintWriter printWriter = resp.getWriter();
            if(cBean!=null){
                String value1 = cBean.getValue1();
                String value2 = cBean.getValue2();
                String value3 = cBean.getValue3();

                printWriter.println(
                        "<br>Value1: " + value1 +
                                "<br>Value2: " + value2 +
                                "<br>Value3: " + value3
                );
            }
            else {
                printWriter.println("Object is empty");
            }

        }
    }

    @Override
    public void destroy() {
        super.destroy();
    }

}