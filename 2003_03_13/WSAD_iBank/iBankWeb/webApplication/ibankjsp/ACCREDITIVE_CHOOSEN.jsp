<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- saved from url=(0067)http://banking.guta.ru/cb_demo/ak.asp?formid=3&docid=377313&fetch=1 -->
<HTML>
<HEAD>
<TITLE>���� ������ ������ - ����������</TITLE>
<!--META http-equiv=Content-Type content="text/html; charset=windows-1251"-->
<%@ page contentType="text/html; charset=windows-1251"%>
<LINK href="/iBank/theme/Master.css" rel="stylesheet" type="text/css">
<SCRIPT language=javascript src="/iBank/ibankjsp/common/common.js" type=text/javascript></SCRIPT>

<SCRIPT language=JavaScript1.2 type=text/javascript>
window.onbeforeunload = unloadCheck;
window.setTimeout('window.onbeforeunload=null', 60000 * 10);
function unloadCheck()
{
	if(event.clientX > document.body.clientWidth && event.clientY < 0)
		return '��������!\n��� ������ �� ������� \'���� ������ ������\' �������������� ������� ���� \'�����\'.';
	else
		return;
}
</SCRIPT>
<META name="GENERATOR" content="IBM WebSphere Studio">
<META http-equiv="Content-Style-Type" content="text/css">
</HEAD>
<BODY>
<%@ page import="com.overstar.ildar.ibank.model.*" %>
<%@ page import="com.overstar.ildar.ibank.model.documents.*" %>
<%@ page import="com.overstar.ildar.ibank.model.accounts.*" %> 
<%@ page import="java.util.*" %>
<jsp:useBean id="userIBank" scope="session" class="com.overstar.ildar.ibank.model.IBank" type="com.overstar.ildar.ibank.model.IBank"/>
<%!
private String selected(String name1, String name2) {
if(name1.equals(name2))
  return (" SELECTED ");
else
  return ("");  
}
%>
<%
//Execute Bean Methods 
String operation = "����������"; 
boolean isNew = true;
String num_docStr = "";
GregorianCalendar calendar = new GregorianCalendar();
String date_docDD = String.valueOf(calendar.get(java.util.Calendar.DATE));
String date_docMM = String.valueOf(calendar.get(java.util.Calendar.MONTH)+1);
String date_docYY = String.valueOf(calendar.get(java.util.Calendar.YEAR));
String date_docStr = date_docYY +"-"+ date_docMM +"-"+ date_docDD ;
String accreditiv_type = " ";
String payer_inn = userIBank.getCurrentIClient().rtInn_cln();
String payer_name = userIBank.getCurrentIClient().rtName_cln();
String payer_account = "��� ������ ���� ����";
Money amount = new Money("0.00");
String payer_bank_name = "��� �� \"������������\", �. ������";
String payer_bank_bic = "044585409";
String payer_bank_acc = "30101810000000000409";
String rcpt_bank_name = "";
String rcpt_bank_bic = "";
String rcpt_bank_acc = "";
String rcpt_inn = "";
String rcpt_name = "";
String rcpt_account = "";
String account_40901 = "";
String termDD = date_docDD;//TEMP
String termMM = date_docMM;//TEMP
String termYY = date_docYY;//TEMP
String termStr = termYY +"-"+ termMM +"-"+ termDD ;
String type_accreditiv1 = "��������";
String type_accreditiv2 = "��������������";
String condition_pay = "��� �������";
String accreditiv_details = "";
String accreditiv_docs = "";
String add_condition = "";

String status_doc = "�����";

Vector bankAccounts = userIBank.getCurrentIClient().getBankAccountsAll();
BankAccount curBankAccount = null;

Accreditive curDocument = (Accreditive)userIBank.getCurrentDocument();
if(curDocument != null) {
  isNew = false;
  operation = "��������������";
  //BankBean = Bank.findWithBankPK(curRecipient.rtBic());
  num_docStr = curDocument.rtNum_doc();
  java.sql.Date date_doc = curDocument.rtDate_doc();
  calendar.setTime(date_doc);
  date_docDD = String.valueOf(calendar.get(java.util.Calendar.DATE));
  date_docMM = String.valueOf(calendar.get(java.util.Calendar.MONTH)+1);
  date_docYY = String.valueOf(calendar.get(java.util.Calendar.YEAR));
  date_docStr = date_docYY +"-"+ date_docMM +"-"+ date_docDD ;
  accreditiv_type = curDocument.rtAccreditiv_type();
  payer_inn = curDocument.rtPayer().rtInn();
  payer_name = curDocument.rtPayer().rtName();
  payer_account = curDocument.rtPayer().rtBill();
  amount = curDocument.rtAmount();
  payer_bank_name = curDocument.rtPayer().rtBank_name();
  payer_bank_bic = curDocument.rtPayer().rtBank_Bic();
  payer_bank_acc = curDocument.rtPayer().rtBank_acc();
  rcpt_bank_name = curDocument.rtRecipient().rtBank_name();
  rcpt_bank_bic = curDocument.rtRecipient().rtBank_Bic();
  rcpt_bank_acc = curDocument.rtRecipient().rtBank_acc();
  rcpt_inn = curDocument.rtRecipient().rtInn();
  rcpt_name = curDocument.rtRecipient().rtName();
  rcpt_account = curDocument.rtRecipient().rtBill();
  account_40901 = curDocument.rtAccount_40901();
  java.sql.Date term = curDocument.rtTerm();
  calendar.setTime(term);
  termDD = String.valueOf(calendar.get(java.util.Calendar.DATE));
  termMM = String.valueOf(calendar.get(java.util.Calendar.MONTH)+1);
  termYY = String.valueOf(calendar.get(java.util.Calendar.YEAR));
  termStr = termYY +"-"+ termMM +"-"+ termDD ;
  type_accreditiv1 = curDocument.rtType_accreditiv1();
  type_accreditiv2 = curDocument.rtType_accreditiv2();
  condition_pay = curDocument.rtCondition_pay();
  accreditiv_details = curDocument.rtAccreditiv_details();
  accreditiv_docs = curDocument.rtAccreditiv_docs();
  add_condition = curDocument.rtAdd_condition();
  status_doc = curDocument.rtStatus_doc().toString();
}  
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
            <TD class=menu width=110 bgColor=#dcdee0><A href="/iBank/ibankjsp/CLIENT_INFO.jsp">������</A><BR>
            <A href="/iBank/ibankjsp/ACCOUNTS.jsp">�����</A><BR>
            <A class=current href="/iBank/ChooseActionServlet?action=ListDocuments">���������</A><BR>
            <A href="/iBank/ibankjsp/STATEMENTS.jsp">�������</A><BR>
            <A href="/iBank/ibankjsp/REFERENCES.jsp">�����������</A><BR>
            <A href="/iBank/ibankjsp/MESSAGES.jsp">���������</A><BR>
            <A href="/iBank/ibankjsp/REPORTS.jsp">������</A><BR>
            <A href="/iBank/ibankjsp/SETUP.jsp">���������</A><BR>
            <A href="/iBank/StopServlet">�����</A><BR>
            </TD>
            <TD>
            <DIV class=title>���������� - <%=operation%></DIV>
            <DIV class=body><!-- --> <SCRIPT language=javascript src="/iBank/ibankjsp/common/validate.js" type=text/javascript></SCRIPT> <SCRIPT language=javascript src="/iBank/ibankjsp/common/form.js" type=text/javascript></SCRIPT>

            <FORM name=docform action="/iBank/ChooseAccreditivsActionServlet" method=post>
            <!-- BEGIN BACKGROUND TABLE --> 
            <!--Hidden Variables-->
            <INPUT type=hidden value=8 name=formid>
            <INPUT type=hidden value="<%=userIBank.getCurrentIClient().getClient_id().getIdAsString()%>" name=currentIClientID>  
            <INPUT type=hidden name=btnsubmit> 


            <TABLE cellSpacing=0 cellPadding=0 border=0>
                <TBODY>
                    <TR>
                        <TD class=docbg><!-- BEGIN LAYOUT TABLE -->
                        <TABLE class=doclayout cellSpacing=1 cellPadding=2 border=0>
                            <TBODY>
                                <TR>
                                    <TD colSpan=5>
                                    <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                                        <TBODY>
                                            <TR>
                                                <TD noWrap rowSpan=2>���������� �&nbsp;<INPUT title=����� maxLength=10 size=10 value="<%=num_docStr%>" name=docnum></TD>
                                                <TD align=center><INPUT title=���� type=hidden value=<%=date_docStr%> name=docdate><INPUT title=����.���� maxLength=2 onchange=date_onchange(this) size=2 value="<%=date_docDD%>" name=docdatedd><INPUT title=����.����� maxLength=2 onchange=date_onchange(this) size=2 value="<%=date_docMM%>" name=docdatemm><INPUT title=����.��� maxLength=4 onchange=date_onchange(this) size=4 value="<%=date_docYY%>" name=docdateyy></TD>
                                                <TD align=center><SELECT title="��� �������" size=1 name=paykind>
                                                    <OPTION <%=selected(accreditiv_type," ")%> value=" "></OPTION>
                                                    <OPTION <%=selected(accreditiv_type,"����������")%> value="����������">����������</OPTION>
                                                    <OPTION <%=selected(accreditiv_type,"����������")%> value="����������">����������</OPTION>
                                                    <OPTION <%=selected(accreditiv_type,"������")%> value="������">������</OPTION>
                                                </SELECT></TD>
                                            </TR>
                                            <TR>
                                                <TD align=center>����</TD>
                                                <TD align=center>��� �������</TD>
                                            </TR>
                                        </TBODY>
                                    </TABLE>
                                    </TD>
                                </TR>
                                <TR>
                                    <TD rowSpan=2>���&nbsp;<INPUT class=disabled title="��� �����������" readOnly maxLength=12 size=14 value="<%=payer_inn%>" name=payerinn><BR>
                                    <TEXTAREA class=disabled title="������������ �����������" name=payer rows=3 readOnly cols=30><%=payer_name%></TEXTAREA><BR>
                                    ����������</TD>
                                    <TD>�����</TD>
                                    <TD colSpan=3><INPUT title=����� maxLength=18 size=18 value="<%=amount%>" name=docsum></TD>
                                </TR>
                                <TR>
                                    <TD>��. �</TD>
                                    <TD colSpan=3><SELECT title="���� �����������" size=1 name=payeracc>
                                        <% for (int i=0; i  <  bankAccounts.size(); i++){ curBankAccount = (BankAccount)bankAccounts.elementAt(i); %>
                                          <OPTION <%if(payer_account.equals(curBankAccount.getId().getId2AsString())) {%> selected <%}%>><%=curBankAccount.getId().getId2AsString()%></OPTION>
                                        <% } %>
                                    </SELECT></TD>
                                </TR>
                                <TR>
                                    <TD rowSpan=2><TEXTAREA class=disabled title="������������ ����� �����������" name=payerbank rows=3 readOnly cols=30><%=payer_bank_name%></TEXTAREA><BR>
                                    ���� �����������</TD>
                                    <TD>���</TD>
                                    <TD colSpan=3><INPUT class=disabled title="��� ����� �����������" readOnly maxLength=9 size=10 value="<%=payer_bank_bic%>" name=payerbic></TD>
                                </TR>
                                <TR>
                                    <TD>��. �</TD>
                                    <TD colSpan=3><INPUT class=disabled title="������� ����� �����������" readOnly maxLength=20 size=23 value="<%=payer_bank_acc%>" name=payercoracc></TD>
                                </TR>
                                <TR>
                                    <TD rowSpan=2><TEXTAREA class=disabled title="������������ ����� ����������" name=receiverbank rows=3 readOnly cols=30><%=rcpt_bank_name%></TEXTAREA><BR>
                                    ���� ����������</TD>
                                    <TD>���</TD>
                                    <TD colSpan=3><INPUT title="��� ����� ����������" maxLength=9 size=10 value="<%=rcpt_bank_bic%>" name=receiverbic>&nbsp;<INPUT class=ref id=receiverbicref title="���������� ������" onclick="CallRefBanks(this.form)" type=button value=">"></TD>
                                </TR>
                                <TR>
                                    <TD>��. �</TD>
                                    <TD colSpan=3><INPUT class=disabled title="������� ����� ����������" readOnly maxLength=20 size=23 value="<%=rcpt_bank_acc%>" name=receivercoracc></TD>
                                </TR>
                                <TR>
                                    <TD vAlign=bottom rowSpan=4>���&nbsp;<INPUT title="��� ����������" maxLength=12 size=14 value="<%=rcpt_inn%>" name=receiverinn>&nbsp;<INPUT class=ref id=receiverref title="���������� ���������������" onclick="CallRefRecipients(this.form)" type=button value=">"><BR>
                                    <TEXTAREA onkeypress="if(this.value.length>=160) event.returnValue=false;" onpaste="this.value=(this.value+window.clipboardData.getData('Text')).substr(0,160);;event.returnValue=false;" title="������������ ����������" name=receiver rows=3 cols=30 onchange=this.value=this.value.substr(0,160);><%=rcpt_name%></TEXTAREA><BR>
                                    ����������</TD>
                                    <TD>��. �<BR>
                                    (40901)</TD>
                                    <TD colSpan=3><INPUT title="���� (40901)" maxLength=20 size=23 value="<%=account_40901%>" name=akacc></TD>
                                </TR>
                                <TR>
                                    <TD>���. ��.&nbsp;</TD>
                                    <TD><INPUT class=disabled readOnly size=2 value=08 name=opkind></TD>
                                    <TD vAlign=top rowSpan=2>���� �����.<BR>
                                    ��������.</TD>
                                    <TD vAlign=top rowSpan=2><INPUT title="���� ��������" type=hidden value="<%=termStr%>" name=paydate><INPUT title="���� ��������.����" maxLength=2 onchange=date_onchange(this) size=2 value="<%=termDD%>" name=paydatedd><INPUT title="���� ��������.�����" maxLength=2 onchange=date_onchange(this) size=2 value="<%=termMM%>" name=paydatemm><INPUT title="���� ��������.���" maxLength=4 onchange=date_onchange(this) size=4 value="<%=termYY%>" name=paydateyy></TD>
                                </TR>
                                <TR>
                                    <TD>���. ��.</TD>
                                    <TD>&nbsp;</TD>
                                </TR>
                                <TR>
                                    <TD>���</TD>
                                    <TD>&nbsp;</TD>
                                    <TD>���. ����</TD>
                                    <TD>&nbsp;</TD>
                                </TR>
                                <TR>
                                    <TD>� ��. ����������</TD>
                                    <TD colSpan=4><INPUT title="���� ����������" maxLength=20 size=23 value="<%=rcpt_account%>" name=receiveracc></TD>
                                </TR>
                                <TR>
                                    <TD>��� �����������</TD>
                                    <TD colSpan=4><SELECT title="��� �����������" size=1 name=akkind>
                                        <OPTION <%=selected(type_accreditiv1,"��������")%>   >��������</OPTION>
                                        <OPTION <%=selected(type_accreditiv1,"�����������")%>>�����������</OPTION>
                                    </SELECT> , <SELECT title="��� �����������" size=1 name=akkind>
                                        <OPTION <%=selected(type_accreditiv2,"��������������")%>>��������������</OPTION>
                                        <OPTION <%=selected(type_accreditiv2,"���������������")%>>���������������</OPTION>
                                    </SELECT></TD>
                                </TR>
                                <TR>
                                    <TD>������� ������</TD>
                                    <TD colSpan=4><SELECT title="������� ������" size=1 name=payterm>
                                        <OPTION <%=selected(condition_pay,"��� �������")%>>��� �������</OPTION>
                                        <OPTION <%=selected(condition_pay,"� ��������")%> >� ��������</OPTION>
                                    </SELECT></TD>
                                </TR>
                                <TR>
                                    <TD colSpan=5>������������ ������� (�����, �����), � � ���� ��������, ���� �������� �������<BR>
                                    (���������� �����, �������� �����), ��������������� � ����� ���������� <BR>
                                    <TEXTAREA onkeypress="if(this.value.length>=250) event.returnValue=false;" onpaste="this.value=(this.value+window.clipboardData.getData('Text')).substr(0,250);;event.returnValue=false;" title="���������� �������" name=paypurpose cols=63 onchange=this.value=this.value.substr(0,250);><%=accreditiv_details%></TEXTAREA> <BR>
                                    ������ �� ������������� (��� ���������) <BR>
                                    <TEXTAREA onkeypress="if(this.value.length>=250) event.returnValue=false;" onpaste="this.value=(this.value+window.clipboardData.getData('Text')).substr(0,250);;event.returnValue=false;" title="������ �� �������������" name=payaccord rows=1 cols=63 onchange=this.value=this.value.substr(0,250);><%=accreditiv_docs%></TEXTAREA> <BR>
                                    �������������� ������� <BR>
                                    <TEXTAREA onkeypress="if(this.value.length>=64) event.returnValue=false;" onpaste="this.value=(this.value+window.clipboardData.getData('Text')).substr(0,64);;event.returnValue=false;" title="�������������� �������" name=paypurpose2 rows=1 cols=63 onchange=this.value=this.value.substr(0,64);><%=add_condition%></TEXTAREA></TD>
                                </TR>
                                <TR>
                                    <TD colSpan=5>����������� � ���������<BR>
                                    <TEXTAREA onkeypress="if(this.value.length>=200) event.returnValue=false;" onpaste="this.value=(this.value+window.clipboardData.getData('Text')).substr(0,200);;event.returnValue=false;" title=����������� name=attention rows=1 cols=63 onchange=this.value=this.value.substr(0,200);></TEXTAREA></TD>
                                </TR>
                            </TBODY>
                        </TABLE>
                        <!-- END LAYOUT TABLE --><INPUT type=hidden value=RUR name=curcode></TD>
                    </TR>
                    <TR>
                        <TD align=center>������ ���������: <%=status_doc%></TD>
                    </TR>
                </TBODY>
            </TABLE>
            <!-- END BACKGROUND TABLE -->
            <%if(!isNew) { %>
            <INPUT onclick=Save(this) type=button value="���������" > 
            <INPUT onclick=Delete(this) type=button value="�������" > 
            <%} else {%>
            <INPUT onclick=AddNew(this) type=button value="��������" >
            <%}%>
            <INPUT onclick=Cancel(this) type=button value="��������" >

            <!-- <INPUT class=btn type=button value="����������" onclick="document_copy(this);">-->
            <INPUT class=btn style="WIDTH: 180px" onclick=pattern_save(this); type=button value="��������� ��� ������"> <INPUT maxLength=255 name=patterntitle> 
</FORM>

<SCRIPT language=javascript>
var theForm = document.docform;

// akkind
theForm.akkind[1].onchange = akkind_onchange;
akkind_onchange();
function akkind_onchange()
{
	var b = theForm.akkind[1].selectedIndex > 0;
	field_disable(theForm.akacc, b);
	if(b) theForm.akacc.value = '';
}

function docform_onsubmit()
{
	with(theForm)
	{
	with(payerbic) if(value.length == 8) value = '0' + value;
	with(receiverbic) if(value.length == 8) value = '0' + value;
	if(!field_check(theForm.docnum,null,3,true)) return false;
	if(!field_check(theForm.docdate,null,7,true)) return false;
	if(!field_check(theForm.paykind,null,8,false)) return false;
	if(!field_check(theForm.docsum,null,6,true)) return false;
	if(!field_check(theForm.payerinn,null,8,false)) return false;
	if(!field_check(theForm.payeracc,null,8,true)) return false;
	if(!field_check(theForm.payer,null,8,true)) return false;
	if(!field_check(theForm.payerbic,null,8,true)) return false;
	if(!field_check(theForm.payercoracc,null,8,true)) return false;
	if(!field_check(theForm.payerbank,null,8,true)) return false;
	if(!field_check(theForm.receiver,null,8,true)) return false;
	if(!field_check(theForm.receiverinn,null,8,false)) return false;
	if(!field_check(theForm.receiveracc,null,8,false)) return false;
	if(!field_check(theForm.receiverbank,null,8,true)) return false;
	if(!field_check(theForm.receiverbic,null,8,true)) return false;
	if(!field_check(theForm.receivercoracc,null,8,false)) return false;
	if(!field_check(theForm.akacc,null,8,false)) return false;
	if(!field_check(theForm.opkind,null,3,true)) return false;
	if(!field_check(theForm.paydate,null,7,true)) return false;
	if(!field_check(theForm.akkind,null,8,true)) return false;
	if(!field_check(theForm.payterm,null,8,true)) return false;
	if(!field_check(theForm.paypurpose,null,8,true)) return false;
	if(!field_check(theForm.payaccord,null,8,true)) return false;
	if(!field_check(theForm.paypurpose2,null,8,false)) return false;
	if(!field_check(theForm.curcode,null,8,false)) return false;
	if(!field_check(theForm.attention,null,8,false)) return false;

	if(parseInt(docnum.value) == 0)
		return field_alert(docnum, '���� ������ ���� ������ ����.');

	if(!docdate_check(docdate))
		return false;
	
	if(parseFloat(docsum.value) == 0)
		return field_alert(docsum, '���� ������ ���� ������ ����.');
	
	var errkey = '������������ ����.';
	
	if(!isINN(payerinn.value))
		if(!field_warn(payerinn, errkey)) return false;

	if(!isAccount(payerbic.value, field_get(payeracc)))
		return field_alert(payeracc, errkey);
	
	if(!isINN(receiverinn.value))
		if(!field_warn(receiverinn, errkey)) return false;

	var re = /[^ -~�-�\n\r]+/;

	if(receiver.value.length < 2)
			return field_alert(receiver);
	if(re.exec(receiver.value) != null)
			return field_alert(receiver, '������������ ������ \'' + RegExp.input.charAt(RegExp.index) + '\'.');
	

	if(field_get(akacc) != '')
	{
		if(!isAccount(receiverbic.value, field_get(akacc)))
			return field_alert(akacc, errkey);
		if(field_get(akacc).substring(0, 8) != '40901810')
			return field_alert(akacc, '������� �������� ���� ���� 40901xxxxxxxxxxxxxxx.');
	}

	if(field_get(receiveracc) != '')
	{
		if(!isAccount(receiverbic.value, field_get(receiveracc)))
			return field_alert(receiveracc, errkey);
		if(field_get(receiveracc).substring(5, 8) != '810')
			return field_alert(receiveracc, '������� �������� ����.');
		if(field_get(receiveracc) == field_get(payeracc))
			return field_alert(receiveracc, '���� ���������� ������ ��������� �� ����� �����������.');
	}

	if(paypurpose.value.length < 2)
		return field_alert(paypurpose);
	if(re.exec(paypurpose.value) != null)
		return field_alert(paypurpose, '������������ ������ \'' + RegExp.input.charAt(RegExp.index) + '\'.');

	}
	return true;
}
function Check(theForm)
{
	return docform_onsubmit();
}

function Save(e)
{
	if(Check(e.form))
	{
		e.form.btnsubmit.value = "Save";
		e.form.submit();
	}
}

function Delete(e)
{
	e.form.btnsubmit.value = "Delete";
	e.form.submit();
}

function Cancel(e)
{
	e.form.btnsubmit.value = "Cancel";
	e.form.submit();
}

function AddNew(e)
{
	if(Check(e.form))
	{
		e.form.btnsubmit.value = "AddNew";
		e.form.submit();
	}
}
	
function CallRefBanks(theForm)
{
	var url = '/iBank/ibankjsp/BANKS_RESULTS.jsp?formname=' + theForm.name + '&BIC=' + theForm.receiverbic.value + '&bankname=' + theForm.receiverbank.value + '&sort=bik' + '&operation=and' + '&fieldnames=receiverbic|receiverbank|receivercoracc|paykind';
	var wnd = window.open(url, 'ref', 'width=630,height=318,resizable=yes,status=yes,toolbar=no,menubar=no,location=no,scrollbars=yes');
	wnd.focus();
}
function CallRefRecipients(theForm)
{
	var url = '/iBank/ibankjsp/RECIPIENTS_RESULTS.jsp?formname=' + theForm.name + '&currentIClientID=' + theForm.currentIClientID.value + '&NAME=' + theForm.receiver.value+ '&INN=' + theForm.receiverinn.value+ '&BILL=' + theForm.receiveracc.value + '&BIC=' + theForm.receiverbic.value  + '&sort=NAME' + '&operation=and' + '&fieldnames=receiver|receiverinn|receiveracc|receiverbic|receiverbank|receivercoracc';
	var wnd = window.open(url, 'ref', 'width=630,height=318,resizable=yes,status=yes,toolbar=no,menubar=no,location=no,scrollbars=yes,dependent=yes');
	wnd.focus();
}

</SCRIPT> <!-- --></DIV>
            </TD>
        </TR>
    </TBODY>
</TABLE>
</BODY>
</HTML>
