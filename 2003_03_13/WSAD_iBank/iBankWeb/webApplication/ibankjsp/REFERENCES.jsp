<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<META name="GENERATOR" content="IBM WebSphere Studio">
<META http-equiv="Content-Style-Type" content="text/css">
<LINK href="/iBank/theme/Master.css" rel="stylesheet" type="text/css">
<TITLE>���� ������ ������ - �����������.</TITLE>
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

<jsp:useBean id="userIBank" scope="session" class="com.overstar.ildar.ibank.model.IBank" type="com.overstar.ildar.ibank.model.IBank"/>

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
            <A href="/iBank/ibankjsp/CLIENT_INFO.jsp">������</A><BR>
            <A href="/iBank/ibankjsp/ACCOUNTS.jsp">�����</A><BR>
            <A href="/iBank/ChooseActionServlet?action=ListDocuments">���������</A><BR>
            <A href="/iBank/ibankjsp/STATEMENTS.jsp">�������</A><BR>
            <A class=current href="/iBank/ibankjsp/REFERENCES.jsp">�����������</A><BR>
            <A href="/iBank/ibankjsp/MESSAGES.jsp">���������</A><BR>
            <A href="/iBank/ibankjsp/REPORTS.jsp">������</A><BR>
            <A href="/iBank/ibankjsp/SETUP.jsp">���������</A><BR>
            <A href="/iBank/StopServlet">�����</A><BR>
            </TD>
            <TD>
            <DIV class=title>�����������</DIV>
            <DIV class=body><!-- -->
            <H5>������ �����������</H5>
            <P><A style="COLOR: #000080" href="/iBank/ChooseActionServlet?action=ListRecipients&sort=bic"><B>���������� ���������������</B></A> <BR>
            �������� ��� ����, ����� ��������, ������� ��� �������� ���������� �������.</P>
            
            
            <H5>����� �����������</H5>
            <P><A style="COLOR: #000080" href="/iBank/ChooseActionServlet?action=ListBanks"><B>���������� ������</B></A> <BR>
            �������� ��� ����, ����� ����������� ��������� ������.</P>
            
            <H5>������������ �� ������� IBANK</H5>
            <P><A style="COLOR: #000080" href="/iBank/web_pablisher/root.html" target="_blank"><B>Rational Rose</B></A> <BR>
            
            <P class=tips>� ������� <B>�����������</B> ��������� ��� ����������� ����������� ��� ������ � �������.<BR>
            ������� �� �������� ������� ����������� ��� ������ � ���.</P>
            <!-- --></DIV>
            </TD>
        </TR>
    </TBODY>
</TABLE>
</BODY>
</HTML>
