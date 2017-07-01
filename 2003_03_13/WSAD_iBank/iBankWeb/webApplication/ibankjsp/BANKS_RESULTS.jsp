<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<!--META HTTP-EQUIV="Content-Type" content="text/html; charset=windows-1251"-->
<%@ page contentType="text/html; charset=WINDOWS-1251"%>
<META name="GENERATOR" content="IBM WebSphere Studio">
<META http-equiv="Content-Style-Type" content="text/css">
<LINK href="/iBank/theme/Master.css" rel="stylesheet" type="text/css">
<TITLE>���������� ������</TITLE>
<script language="javascript" type="text/javascript" src="/iBank/ibankjsp/common/common.js"></script>
<script language="javascript" type="text/javascript">
function Go(strval) {
	var thisform = document.refform;
	var outform = window.opener.document.forms[thisform.formname.value];
	
	if(outform != null)
	{
		var names = thisform.fieldnames.value.split('|'), values = strval.split('|');
		for(var i in names)
			if(names[i].length > 0)
				outform[names[i]].value = unescape(values[i]);
        if(outform.paykind != null) {
           var selection = outform.paykind;
           var e = selection.options.length;
           for(var i = 0; i < e; i++)
             if(selection.options[i].value == values[3])
                selection.options[i].selected = true;
        }
    }
	Close();
}

function Close()
{
	if(window.opener)
		window.opener.focus();
	window.close();
}

function SortBy(field)
{
	var e = document.refform.sort;
	e.value = (e.value == field)?field + ' desc':field;
	e.form.submit();
}
</script>
</HEAD>
<BODY> 
<%@ page import="com.overstar.ildar.ibank.model.references.*" %>
<%@ page import="com.overstar.ildar.ibank.servlets.util.*" %> 
<%
//Execute Bean Methods 
String sort = request.getParameter("sort");
String operation = request.getParameter("operation");
String bic = request.getParameter("BIC");
String bankname = request.getParameter("bankname");
bankname = ServletUtilities.encode(request, bankname);
java.util.Vector banks = BankTransactionMgr.getBanks(bic, bankname, sort, operation);
Bank curBank = null;
String fieldnames = request.getParameter("fieldnames");//"BIC|bankname|bankacc"
String formname = request.getParameter("formname");
%>

<FORM action="/iBank/ibankjsp/BANKS_RESULTS.jsp" method=post name=refform>

<p class="gridtitle">��������� ������</p>
<table class="inputbar">
    <CAPTION><B>������ ��� ����������� &quot;���������� �����&quot;</B></CAPTION>
    <TR><TD class=label>���</TD>
            <TD class=input><INPUT name=BIC size=10 maxlength=9 value='<%= bic%>' title="���"></TD>
            <TD class=label align="right">�<INPUT type="radio" <%=ServletUtilities.checked(operation,"and")%> name="operation" value="and"></TD>
            <TD class=button rowspan="2">
<INPUT type=submit value="��������" name=btnfind>&nbsp;<INPUT type=reset value="��������" name=btnreset>&nbsp;<INPUT type=button value="�������" onclick="Close();">
</TD>
        </TR>
<TR><TD class=label>������������</TD>
            <TD class=input><INPUT name=bankname size=34 maxlength=30 value='<%= bankname %>' title="������������"></TD>
            <TD class=label align="right">���<INPUT type="radio" <%=ServletUtilities.checked(operation,"or")%> name="operation" value="or"></TD>
        </TR>
    </TBODY>
</TABLE>
<!--hidden field-->
	<INPUT type="hidden" name="fieldnames" value='<%=fieldnames%>'>
	<INPUT type="hidden" name="formname" value='<%=formname%>'>
	<INPUT TYPE="hidden" NAME="sort" value='<%=sort%>'>
	<INPUT TYPE="hidden" NAME="operation" value='<%=operation%>'>
</FORM>

<p class="gridtitle">���������� ������</p>

<TABLE class="grid" border="1">
    <CAPTION><B>��������� ������� �������</B></CAPTION>
    <TBODY>
        <TR>
            <TH nowrap><a href="javascript:SortBy('bik')" title="����������� �� ���� '���'">���</a>                          <%=ServletUtilities.isUp(sort, "bik")%>       </TH>
            <TH nowrap><a href="javascript:SortBy('bill_corr')" title="����������� �� ���� '���. ����'">���. ����</a>        <%=ServletUtilities.isUp(sort, "bill_corr")%> </TH>
            <TH nowrap><a href="javascript:SortBy('bank_name')" title="����������� �� ���� '������������'">������������</a>  <%=ServletUtilities.isUp(sort, "bank_name")%> </TH>
            <TH nowrap><a href="javascript:SortBy('city')" title="����������� �� ���� '���������������'">���������������</a> <%=ServletUtilities.isUp(sort, "city")%>      </TH>
            <TH nowrap><a href="javascript:SortBy('delivery')" title="����������� �� ���� '��� �������'">��� �������</a>     <%=ServletUtilities.isUp(sort, "delivery")%>  </TH>
        </TR>
        <% if(banks.size() > 0) {
            for (int i=0; i  <  banks.size(); i++){ curBank = (Bank)banks.elementAt(i); %>
             <TR>
              <TD><A href="javascript:Go('<%= curBank.getBik().getIdAsString() %>|<%= ServletUtilities.filter(curBank.rtBank_name()) %>|<%= curBank.rtBill_corr() %>|<%= curBank.rtDelivery() %>')" title="�������� ������"><%= curBank.getBik().getIdAsString() %></A></TD>
              <TD><%= curBank.rtBill_corr() %></TD>
              <TD><%= curBank.rtBank_name() %></TD>
              <TD><%= curBank.rtCity() %></TD>
              <TD><%= curBank.rtDelivery() %></TD>
            </TR>
        <% }
        } else { %>
             <TR><TD align=center colspan=5>��� ������ ��� ������</TD></TR>            
        <% } %>
    </TBODY>
</TABLE>

<P align=right>����� ������� <%=banks.size()%>.</P>

</BODY>
</HTML>
