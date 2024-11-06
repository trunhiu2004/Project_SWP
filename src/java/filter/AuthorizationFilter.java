/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Filter.java to edit this template
 */
package filter;

import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.Arrays;
import java.util.List;
import model.Accounts;

/**
 *
 * @author ankha
 */
@WebFilter(filterName = "AuthorizationFilter", urlPatterns = {"/*"})
public class AuthorizationFilter implements Filter {

    private static final boolean debug = true;
    private FilterConfig filterConfig = null;

    private static final List<String> STAFF_BLACKLIST = Arrays.asList(
            "/HomeAdmin",
            "/listProduct",
            "/listCategory",
            "listSupplier",
            "/listUnit",
            "/listProductDiscount",
            "/listLogInventory",
            "/importProduct",
            "/addNewProduct",
            "/deleteInventory",
            "/listLogInventory",
            "/exportOldBatch",
            "/exportNewToStore",
            "/deleteStoreStock",
            "/list-order",
            "/invoice",
            "/couponManage",
            "/promotionManage",
            "/staffManage",
            "/ListCustomer",
            "/ListShop",
            "/ListShift",
            "/ListCustomerReport",
            "/ProductSales",
            "/ProductCategorySale",
            "/BestSellProduct",
            "/emailSettings",
            "/emailTemplates",
            "/register",
            "/profile?action=view",
            "/mailLogs"
    // Thêm các URL khác mà bạn muốn cấm nhân viên truy cập
    );
    // The filter configuration object we are associated with.  If
    // this value is null, this filter instance is not currently
    // configured. 

    public AuthorizationFilter() {
    }

    private void doBeforeProcessing(ServletRequest request, ServletResponse response)
            throws IOException, ServletException {
        if (debug) {
            log("AuthorizationFilter:DoBeforeProcessing");
        }

        // Write code here to process the request and/or response before
        // the rest of the filter chain is invoked.
        // For example, a logging filter might log items on the request object,
        // such as the parameters.
        /*
	for (Enumeration en = request.getParameterNames(); en.hasMoreElements(); ) {
	    String name = (String)en.nextElement();
	    String values[] = request.getParameterValues(name);
	    int n = values.length;
	    StringBuffer buf = new StringBuffer();
	    buf.append(name);
	    buf.append("=");
	    for(int i=0; i < n; i++) {
	        buf.append(values[i]);
	        if (i < n-1)
	            buf.append(",");
	    }
	    log(buf.toString());
	}
         */
    }

    private void doAfterProcessing(ServletRequest request, ServletResponse response)
            throws IOException, ServletException {
        if (debug) {
            log("AuthorizationFilter:DoAfterProcessing");
        }

        // Write code here to process the request and/or response after
        // the rest of the filter chain is invoked.
        // For example, a logging filter might log the attributes on the
        // request object after the request has been processed. 
        /*
	for (Enumeration en = request.getAttributeNames(); en.hasMoreElements(); ) {
	    String name = (String)en.nextElement();
	    Object value = request.getAttribute(name);
	    log("attribute: " + name + "=" + value.toString());

	}
         */
        // For example, a filter might append something to the response.
        /*
	PrintWriter respOut = new PrintWriter(response.getWriter());
	respOut.println("<P><B>This has been appended by an intrusive filter.</B>");
         */
    }

    /**
     *
     * @param request The servlet request we are processing
     * @param response The servlet response we are creating
     * @param chain The filter chain we are processing
     *
     * @exception IOException if an input/output error occurs
     * @exception ServletException if a servlet error occurs
     */
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        HttpSession session = httpRequest.getSession(false);

        String loginURI = httpRequest.getContextPath() + "/login";
        String forgetPasswordURI = httpRequest.getContextPath() + "/forgetPassword";
        String resetPasswordURI = httpRequest.getContextPath() + "/resetPassword";
        String changePasswordURI = httpRequest.getContextPath() + "/changePassword";
        String checkPriceURI = httpRequest.getContextPath() + "/checkPrice";
        String requestURI = httpRequest.getRequestURI();

        boolean isLoggedIn = (session != null && session.getAttribute("account") != null);
        boolean isLoginRequest = requestURI.equals(loginURI);
        boolean isForgetPasswordRequest = requestURI.equals(forgetPasswordURI);
        boolean isResetPasswordRequest = requestURI.equals(resetPasswordURI);
        boolean isChangePasswordRequest = requestURI.equals(changePasswordURI);
        boolean isCheckPriceRequest = requestURI.equals(checkPriceURI);
        boolean isPublicResource = requestURI.contains("/css/") || requestURI.contains("/js/") || requestURI.contains("/images/") || requestURI.contains("/assets/");

        if (isPublicResource || isLoginRequest || isForgetPasswordRequest || isResetPasswordRequest || isChangePasswordRequest || isCheckPriceRequest) {
            // Cho phép truy cập vào tài nguyên công khai và trang đăng nhập
            chain.doFilter(request, response);
        } else if (isLoggedIn) {
            Accounts account = (Accounts) session.getAttribute("account");

            if (account.getRole_id() == 1) {
                // Admin có thể truy cập tất cả
                chain.doFilter(request, response);
            } else if (account.getRole_id() == 2) {
                // Kiểm tra xem URL hiện tại có trong danh sách đen không
                boolean isBlacklisted = STAFF_BLACKLIST.stream()
                        .anyMatch(blacklistedUrl -> requestURI.contains(blacklistedUrl));

                if (isBlacklisted) {
                    // Nếu URL nằm trong danh sách đen, chuyển hướng đến trang lỗi
                    httpResponse.sendRedirect(httpRequest.getContextPath() + "/PoSHome?error=unauthorized");
                } else {
                    // Nếu không nằm trong danh sách đen, cho phép truy cập
                    chain.doFilter(request, response);
                }
            } else {
                // Vai trò không xác định, chuyển hướng đến trang đăng nhập
                httpResponse.sendRedirect(loginURI + "?error=unauthorized");
            }
        } else {
            // Người dùng chưa đăng nhập, chuyển hướng đến trang đăng nhập
            httpResponse.sendRedirect(loginURI);
        }
    }

    /**
     * Return the filter configuration object for this filter.
     */
    public FilterConfig getFilterConfig() {
        return (this.filterConfig);
    }

    /**
     * Set the filter configuration object for this filter.
     *
     * @param filterConfig The filter configuration object
     */
    public void setFilterConfig(FilterConfig filterConfig) {
        this.filterConfig = filterConfig;
    }

    /**
     * Destroy method for this filter
     */
    public void destroy() {
    }

    /**
     * Init method for this filter
     */
    public void init(FilterConfig filterConfig) {
        this.filterConfig = filterConfig;
        if (filterConfig != null) {
            if (debug) {
                log("AuthorizationFilter:Initializing filter");
            }
        }
    }

    /**
     * Return a String representation of this object.
     */
    @Override
    public String toString() {
        if (filterConfig == null) {
            return ("AuthorizationFilter()");
        }
        StringBuffer sb = new StringBuffer("AuthorizationFilter(");
        sb.append(filterConfig);
        sb.append(")");
        return (sb.toString());
    }

    private void sendProcessingError(Throwable t, ServletResponse response) {
        String stackTrace = getStackTrace(t);

        if (stackTrace != null && !stackTrace.equals("")) {
            try {
                response.setContentType("text/html");
                PrintStream ps = new PrintStream(response.getOutputStream());
                PrintWriter pw = new PrintWriter(ps);
                pw.print("<html>\n<head>\n<title>Error</title>\n</head>\n<body>\n"); //NOI18N

                // PENDING! Localize this for next official release
                pw.print("<h1>The resource did not process correctly</h1>\n<pre>\n");
                pw.print(stackTrace);
                pw.print("</pre></body>\n</html>"); //NOI18N
                pw.close();
                ps.close();
                response.getOutputStream().close();
            } catch (Exception ex) {
            }
        } else {
            try {
                PrintStream ps = new PrintStream(response.getOutputStream());
                t.printStackTrace(ps);
                ps.close();
                response.getOutputStream().close();
            } catch (Exception ex) {
            }
        }
    }

    public static String getStackTrace(Throwable t) {
        String stackTrace = null;
        try {
            StringWriter sw = new StringWriter();
            PrintWriter pw = new PrintWriter(sw);
            t.printStackTrace(pw);
            pw.close();
            sw.close();
            stackTrace = sw.getBuffer().toString();
        } catch (Exception ex) {
        }
        return stackTrace;
    }

    public void log(String msg) {
        filterConfig.getServletContext().log(msg);
    }

}
