package ibankjsp;

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
import com.overstar.ildar.ibank.model.*;
import com.overstar.ildar.ibank.servlets.*;


public class _CLIENT_0005fINFO_jsp_18 extends HttpJspBase {

    static char[][] _jspx_html_data = null;
    // end

    static {
    }
    public _CLIENT_0005fINFO_jsp_18( ) {
    }

    private static boolean _jspx_inited = false;

    private static boolean checkedAttributeIgnoreException = false;
    private static boolean throwException = true;
    
    public final void _jspx_init() throws JasperException {
        ObjectInputStream oin = null;
        int numStrings = 0;
        try {
            InputStream fin = this.getClass().getClassLoader().getResourceAsStream("ibankjsp/_CLIENT_0005fINFO_jsp_18.dat");
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
            response.setContentType("text/html; charset=windows-1251");
            pageContext = _jspxFactory.getPageContext(this, request, response,
			"", true, 8192, true);

            application = pageContext.getServletContext();
            config = pageContext.getServletConfig();
            session = pageContext.getSession();
            out = pageContext.getOut();

            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 1,0-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 9,0
                out.print(_jspx_html_data[0]);
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 9,56-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 25,0
                out.print(_jspx_html_data[1]);
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 25,53-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 26,0
                out.print(_jspx_html_data[2]);
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 26,56-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 27,0
                out.print(_jspx_html_data[3]);
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 27,0-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 27,134
                com.overstar.ildar.ibank.model.IBank userIBank = null;
                boolean _jspx_specialuserIBank  = false;
                 synchronized (session) {
                    userIBank= (com.overstar.ildar.ibank.model.IBank)
                    pageContext.getAttribute("userIBank",PageContext.SESSION_SCOPE);
                    if ( userIBank == null ) {
                        _jspx_specialuserIBank = true;
                        try {
                            userIBank = (com.overstar.ildar.ibank.model.IBank) Beans.instantiate(getClassLoader(), "com.overstar.ildar.ibank.model.IBank");
                        } catch (Exception exc) {
                             throw new ServletException (" Cannot create bean of class "+"com.overstar.ildar.ibank.model.IBank");
                        }
                        pageContext.setAttribute("userIBank", userIBank, PageContext.SESSION_SCOPE);
                    }
                    String doSetAttribute = getInitParameter("dosetattribute");
                    if ((doSetAttribute != null) && (doSetAttribute.equalsIgnoreCase("true"))){
                        session.setAttribute("userIBank", userIBank);
                    }
                 } 
                if(_jspx_specialuserIBank == true) {
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 27,0-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 27,134
                }
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 27,134-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 28,0
                out.print(_jspx_html_data[4]);
            // end
            // ##DEBUG## ##SCRIPTLET## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 28,2-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 35,0
                
                //Execute Bean Methods 
                Vector bankAccounts = userIBank.getCurrentIClient().getBankAccountsAll();
                BankAccount curBankAccount = null;
                java.util.Date curDate = new java.util.Date();
                Cookie [] cookies = request.getCookies();
                String lastDate = ServletUtilities.getCookieValue(cookies, "lastDate", curDate.toString());
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 35,2-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 40,64
                out.print(_jspx_html_data[5]);
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 40,67-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 40,109
                out.print(userIBank.getCurrentIClient().rtName_cln());
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 40,111-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 72,18
                out.print(_jspx_html_data[6]);
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 72,21-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 72,63
                out.print(userIBank.getCurrentIClient().rtName_cln());
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 72,65-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 77,34
                out.print(_jspx_html_data[7]);
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 77,37-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 77,78
                out.print(userIBank.getCurrentIClient().rtInn_cln());
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 77,80-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 81,34
                out.print(_jspx_html_data[8]);
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 81,37-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 81,78
                out.print(userIBank.getCurrentIClient().rtFio_cln());
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 81,80-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 85,34
                out.print(_jspx_html_data[9]);
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 85,37-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 85,79
                out.print(userIBank.getCurrentIClient().rtAddr_cln());
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 85,81-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 89,34
                out.print(_jspx_html_data[10]);
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 89,37-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 89,75
                out.print(userIBank.getCurrentIClient().rtCity());
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 89,77-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 93,34
                out.print(_jspx_html_data[11]);
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 93,37-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 93,79
                out.print(userIBank.getCurrentIClient().rtReg_date());
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 93,81-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 98,38
                out.print(_jspx_html_data[12]);
            // end
            // ##DEBUG## ##SCRIPTLET## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 98,40-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 98,145
                 for (int i=0; i  <  bankAccounts.size(); i++){ curBankAccount = (BankAccount)bankAccounts.elementAt(i); 
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 98,147-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 99,48
                out.print(_jspx_html_data[13]);
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 99,51-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 99,90
                out.print(curBankAccount.getId().getId2AsString());
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 99,92-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 100,38
                out.print(_jspx_html_data[14]);
            // end
            // ##DEBUG## ##SCRIPTLET## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 100,40-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 100,43
                 } 
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 100,45-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 105,34
                out.print(_jspx_html_data[15]);
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 105,37-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 105,46
                out.print( curDate );
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 105,48-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 109,28
                out.print(_jspx_html_data[16]);
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 109,31-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 109,39
                out.print(lastDate);
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 109,41-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 113,34
                out.print(_jspx_html_data[17]);
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 113,37-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 113,76
                out.print(userIBank.getCurrentIClient().rtPerms());
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 113,78-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 134,27
                out.print(_jspx_html_data[18]);
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 134,30-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 134,38
                out.print(lastDate);
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 134,40-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 134,44
                out.print(_jspx_html_data[19]);
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 134,47-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 134,56
                out.print( curDate );
            // end
            // ##DEBUG## "C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 134,58-"C:\\WSAD_iBank\\iBankWeb\\webApplication\\ibankjsp\\CLIENT_INFO.jsp" 147,0
                out.print(_jspx_html_data[20]);
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
