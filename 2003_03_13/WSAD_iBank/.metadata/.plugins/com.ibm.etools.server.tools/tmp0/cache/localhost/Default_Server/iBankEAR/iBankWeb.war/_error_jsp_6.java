import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
import java.io.PrintWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.util.Vector;
import org.apache.jasper.runtime.*;
import java.beans.*;
import org.apache.jasper.JasperException;
import java.io.ByteArrayOutputStream;
import org.apache.jasper.compiler.ibmtsx.*;
import org.apache.jasper.compiler.ibmdb.*;
import java.sql.SQLException;
import java.io.*;


public class _error_jsp_6 extends HttpJspBase {

    static char[][] _jspx_html_data = null;

    static {
    }
    public _error_jsp_6( ) {
    }

    private static boolean _jspx_inited = false;

    private static boolean checkedAttributeIgnoreException = false;
    private static boolean throwException = true;
    
    public final void _jspx_init() throws JasperException {
        ObjectInputStream oin = null;
        int numStrings = 0;
        try {
            InputStream fin = this.getClass().getClassLoader().getResourceAsStream("_error_jsp_6.dat");
            oin = new ObjectInputStream(fin);
            _jspx_html_data = (char[][]) oin.readObject();
        } catch (Exception ex) {
            throw new JasperException("Unable to open data file");
        } finally {
            if (oin != null)
                try { oin.close(); } catch (IOException ignore) { }
        }
    }

    public void _jspService(HttpServletRequest request, HttpServletResponse  response)
        throws IOException, ServletException {

        JspFactory _jspxFactory = null;
        PageContext pageContext = null;
        HttpSession session = null;
        Throwable exception = (Throwable) request.getAttribute("javax.servlet.jsp.jspException");
        ServletContext application = null;
        ServletConfig config = null;
        JspWriter out = null;
        Object page = this;
        String  _value = null;
        setBooleanIgnoreException();
        try {

            if (_jspx_inited == false) {
                _jspx_init();
                _jspx_inited = true;
            }
            _jspxFactory = JspFactory.getDefaultFactory();
            response.setContentType("text/html;charset=Cp1251");
            pageContext = _jspxFactory.getPageContext(this, request, response,
			"", true, 8192, true);

            application = pageContext.getServletContext();
            config = pageContext.getServletConfig();
            session = pageContext.getSession();
            out = pageContext.getOut();

            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\error.jsp" 1,0-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\error.jsp" 2,0
                out.print(_jspx_html_data[0]);
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\error.jsp" 2,49-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\error.jsp" 24,14
                out.print(_jspx_html_data[1]);
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\error.jsp" 24,17-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\error.jsp" 24,28
                out.print( exception );
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\error.jsp" 24,30-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\error.jsp" 28,14
                out.print(_jspx_html_data[2]);
            // end
            // ##DEBUG## ##SCRIPTLET## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\error.jsp" 28,16-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\error.jsp" 31,8
                 if (exception != null) { 
                            StringWriter writer = new StringWriter();
                            exception.printStackTrace(new PrintWriter(writer));
                        
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\error.jsp" 31,10-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\error.jsp" 31,39
                out.print(_jspx_html_data[3]);
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\error.jsp" 31,42-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\error.jsp" 31,62
                out.print( writer.getBuffer() );
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\error.jsp" 31,64-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\error.jsp" 31,77
                out.print(_jspx_html_data[4]);
            // end
            // ##DEBUG## ##SCRIPTLET## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\error.jsp" 31,79-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\error.jsp" 31,89
                 } else { 
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\error.jsp" 31,91-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\error.jsp" 31,134
                out.print(_jspx_html_data[5]);
            // end
            // ##DEBUG## ##SCRIPTLET## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\error.jsp" 31,136-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\error.jsp" 31,139
                 } 
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\error.jsp" 31,141-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\error.jsp" 40,0
                out.print(_jspx_html_data[6]);
            // end

        } catch (Exception ex) {
            if ((out != null) && (out.getBufferSize() != 0)){
                out.clearBuffer();
            }
            pageContext.handlePageException(ex);
        } catch ( Throwable t) {
            if ((out != null) && (out.getBufferSize() != 0)){
                out.clearBuffer();
            }
            pageContext.handlePageException(new Exception(t.getMessage()));
        } finally {
            if ( out != null){
                out.flush();
            }
            _jspxFactory.releasePageContext(pageContext);
        }
    }
    private void setBooleanIgnoreException() {
        if (checkedAttributeIgnoreException) return;
        
        checkedAttributeIgnoreException = true;
        String initParamIgnoreException =(String)(getServletConfig().getInitParameter("jsp.repeatTag.ignoreException"));
        if ((initParamIgnoreException != null) && (initParamIgnoreException.toLowerCase().equals("true"))){ 
            throwException = false;
        }
    }
}
