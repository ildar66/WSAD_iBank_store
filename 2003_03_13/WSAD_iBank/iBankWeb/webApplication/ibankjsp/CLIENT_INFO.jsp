<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<META name="GENERATOR" content="IBM WebSphere Studio">
<META http-equiv="Content-Style-Type" content="text/css">
<LINK href="/iBank/theme/Master.css" rel="stylesheet" type="text/css">
<TITLE>���� ������ ������ - ���������� � �������.</TITLE>
<!--META http-equiv=Content-Type content="text/html; charset=windows-1251"-->
<%@ page contentType="text/html; charset=windows-1251"%>
<SCRIPT language=javascript src="/iBank/ibankjsp/common/common.js" type=text/javascript></SCRIPT>
<SCRIPT language=JavaScript1.2 type=text/javascript>
window.onbeforeunload = unloadCheck;
window.setTimeout('window.onbeforeunload=null', 60000 * 10);
function unloadCheck()
{
	if(event.clientX > document.body.clientWidth && event.clientY < 0)
		return '��������!\n��� ������ �� ������� \'IBank \' �������������� ������� ���� \'�����\'.';
	else
		return;
}
</SCRIPT>

</HEAD>
<BODY>
<%@ page import="com.overstar.ildar.ibank.model.*" %>
<%@ page import="com.overstar.ildar.ibank.model.accounts.*" %>
<%@ page import="com.overstar.ildar.ibank.servlets.*" %>
<%@ page import="com.overstar.ildar.ibank.servlets.util.*" %>
<jsp:useBean id="userIBank" scope="session" class="com.overstar.ildar.ibank.model.IBank" type="com.overstar.ildar.ibank.model.IBank"/>
<%
//Execute Bean Methods 
Vector bankAccounts = userIBank.getCurrentIClient().getBankAccountsAll(); 
BankAccount curBankAccount = null;
java.util.Date curDate = new java.util.Date();
Cookie [] cookies = request.getCookies();
String lastDate = ServletUtilities.getCookieValue(cookies, "lastDate", curDate.toString());
java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("dd/MM/yyyy");
%>
<TABLE cellSpacing=0 cellPadding=0 width="100%" background="/iBank/ibankjsp/images/bgtop.gif" border=0>
    <TBODY>
        <TR>
            <TD width=120><IMG height=51 alt="IBANK logo" src="/iBank/ibankjsp/images/logo.gif" width=120 border=0></TD>
            <TD class=toptitle>� IBANK - ������ ������ � ���� � <%=userIBank.getCurrentIClient().rtName_cln()%></TD>
            <TD class=toptitle align=right>� <A class=topmenu href="javascript:openHelp(window.location,'');">�������</A>&nbsp;</TD>
        </TR>
    </TBODY>
</TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="100%" background="/iBank/ibankjsp/images/hr2.gif" border=0>
    <TBODY>
        <TR>
            <TD width=120 background="/iBank/ibankjsp/images/hr1.gif"><IMG height=15 alt="" src="/iBank/ibankjsp/images/zagl1.gif" width=18></TD>
            <TD>&nbsp;</TD>
        </TR>
    </TBODY>
</TABLE>
<TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
    <TBODY>
        <TR vAlign=top>
            <TD width=10 bgColor=#dcdee0>&nbsp;</TD>
            <TD class=menu width=110 bgColor=#dcdee0>
            <A class=current href="/iBank/ibankjsp/CLIENT_INFO.jsp">������</A><BR>
            <A href="/iBank/ibankjsp/ACCOUNTS.jsp">�����</A><BR>
            <A href="/iBank/ChooseActionServlet?action=ListDocuments">���������</A><BR>
            <A href="/iBank/ibankjsp/STATEMENTS.jsp">�������</A><BR>
            <A href="/iBank/ibankjsp/REFERENCES.jsp">�����������</A><BR>
            <A href="/iBank/ibankjsp/MESSAGES.jsp">���������</A><BR>
            <A href="/iBank/ibankjsp/REPORTS.jsp">������</A><BR>
            <A href="/iBank/ibankjsp/SETUP.jsp">���������</A><BR>
            <A href="/iBank/StopServlet">�����</A><BR>
            </TD>
            <TD>
            <DIV class=title>������</DIV>
            <DIV class=body><!-- -->
            <H5>����������</H5>
            <P><B><%=userIBank.getCurrentIClient().rtName_cln()%></B></P>
            <TABLE cellSpacing=0 cellPadding=2 border=0>
                <TBODY>
                    <TR>
                        <TD>���:</TD>
                        <TD>&nbsp;<%=userIBank.getCurrentIClient().rtInn_cln()%></TD>
                    </TR>
                                        <TR>
                        <TD>��� �������:</TD>
                        <TD>&nbsp;<%=userIBank.getCurrentIClient().rtFio_cln()%></TD>
                    </TR>
                                        <TR>
                        <TD>�����:</TD>
                        <TD>&nbsp;<%=userIBank.getCurrentIClient().rtAddr_cln()%></TD>
                    </TR>
                                        <TR>
                        <TD>����� ����������:</TD>
                        <TD>&nbsp;<%=userIBank.getCurrentIClient().rtCity()%></TD>
                    </TR>
                                        <TR>
                        <TD>���� �����������:</TD>
                        <TD>&nbsp;<%=formatter.format((java.util.Date)userIBank.getCurrentIClient().rtReg_date())%></TD>
                    </TR>
                    <TR>
                        <TD>����� �������:</TD>
                        <TD>&nbsp;<SELECT title="���� �����������" size=1 name=payeracc>
                                      <% for (int i=0; i  <  bankAccounts.size(); i++){ curBankAccount = (BankAccount)bankAccounts.elementAt(i); %>
                                        <OPTION><%=curBankAccount.getId().getId2AsString()%></OPTION>
                                      <% } %>  
                                    </SELECT></TD>
                    </TR>
                    <TR>
                        <TD>�������:</TD>
                        <TD>&nbsp;<%= curDate %></TD>
                    </TR>
                    <TR>
                        <TD>���� ���������� ���������:</TD>
                        <TD>&nbsp;<%=lastDate%></TD>
                    </TR>
                    <TR>
                        <TD>����� �������:</TD>
                        <TD>&nbsp;<%=userIBank.getCurrentIClient().rtPerms()%></TD>
                    </TR>
                </TBODY>
            </TABLE>
            <H5>�������</H5>
            <!--
	<P>�������� ���.</P>
-->
            <TABLE>
                <TBODY>
                    <TR>
                        <TD vAlign=top><B>17/08/2001</B></TD>
                        <TD>������� 1<A href="/iBank/ibankjsp/REPORTS.jsp">������ �� ��</A>.</TD>
                    </TR>
                    <TR>
                        <TD vAlign=top><B>10/08/2001</B></TD>
                        <TD>������� 2<A href="/iBank/ibankjsp/REPORTS.jsp">������ �� ��</A>.</TD>
                    </TR>
                </TBODY>
            </TABLE>
            <H5>�������� �������</H5>
            <P>�� ������ � <%=lastDate%> �� <%= curDate %> :���������� �� ���� ������???</P>
            <H5>����� �����</H5>
            <P>���� �� �� �� : =, =, ... [<A title=���������... href="/iBank/ibankjsp/REFBROWSE.jsp?referenceid=5&amp;ratedate=">��������</A>]</P>
            <H5>���������</H5>
            <P>��� ��� ��� ����� ���������.</P>
            <P class=tips>� ������� <B>������</B> ��������� �������� ���������� �� ����� ���������� � �������. �� ����� ������� ������� � �������� ������� � ������� ������ ���������� ��������� � �������.</P>
            <!-- --></DIV>
            </TD>
        </TR>
    </TBODY>
</TABLE>
</BODY>
</HTML>
