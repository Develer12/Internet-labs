package filters;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

@WebFilter(filterName = "PF", urlPatterns = "/Ccc")
public class PF implements Filter {
    public void destroy() {
        System.out.println("PF: destroy");
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        System.out.println("PF: doFilter");
    }

    public void init(FilterConfig config) throws ServletException {
        System.out.println("PF: init");
    }

}
