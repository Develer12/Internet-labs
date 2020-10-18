package listeners;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.*;

@WebListener()
public class L1 implements ServletContextListener,
        HttpSessionListener, HttpSessionAttributeListener {

    public L1() { }

    public void contextInitialized(ServletContextEvent sce) {
        ServletContext ss = sce.getServletContext();
        System.out.println("L1:contextInitialized");
        System.out.println("L1:serverInfo="+ss.getServerInfo());
    }

    public void contextDestroyed(ServletContextEvent sce) {
        ServletContext ss = sce.getServletContext();
        System.out.println("L1:contextDestroyed");
    }

    public void sessionCreated(HttpSessionEvent se) {

    }

    public void sessionDestroyed(HttpSessionEvent se) {

    }

    public void attributeAdded(HttpSessionBindingEvent sbe) {

    }

    public void attributeRemoved(HttpSessionBindingEvent sbe) {

    }

    public void attributeReplaced(HttpSessionBindingEvent sbe) {

    }
}
