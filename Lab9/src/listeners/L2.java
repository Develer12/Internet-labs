package listeners;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

@WebListener()
public class L2 implements ServletContextListener,
        HttpSessionListener, HttpSessionAttributeListener {

    public L2() { }

    public void contextInitialized(ServletContextEvent sce) {

    }

    public void contextDestroyed(ServletContextEvent sce) {

    }

    public void sessionCreated(HttpSessionEvent se) {

    }

    public void sessionDestroyed(HttpSessionEvent se) {

    }

    public void attributeAdded(HttpSessionBindingEvent sbe) {
        System.out.println("L2:attributeAdded:AtributeName= "
                +sbe.getName());
        System.out.println("L2:attributeAdded:AtributeValue "
                +sbe.getValue());
    }

    public void attributeRemoved(HttpSessionBindingEvent sbe) {
        System.out.println("L2:attributeRemoved:AtributeName= "
                +sbe.getName());
        System.out.println("L2:attributeRemoved:AtributeValue "
                +sbe.getValue());
    }

    public void attributeReplaced(HttpSessionBindingEvent sbe) {
        System.out.println("L2:attributeReplaced:AtributeName="
                +sbe.getName());
        System.out.println("L2:attributeReplaced:AtributeOldValue "
                +sbe.getValue());
    }
}
