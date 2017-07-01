<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<TITLE>���� ������ ������ - ���������</TITLE>
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
		return '��������!\n��� ������ �� ������� \'IBank \' �������������� ������� ���� \'�����\'.';
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
<jsp:useBean id="userIBank" scope="session" class="com.overstar.ildar.ibank.model.IBank" type="com.overstar.ildar.ibank.model.IBank"/>
<%!
private String isUp(String aSort, String name) {
 if(aSort.startsWith(name))
  { if(aSort.endsWith("desc")) 
     return (" <IMG width=8 height=7 hspace=3 src='/iBank/ibankjsp/images/down.gif' alt='�� ��������'> ");
    else
     return (" <IMG width=8 height=7 hspace=3 src='/iBank/ibankjsp/images/up.gif' alt='�� �����������'> "); 
  }
 else return ("");      
}

private String checked(java.util.List aStatuses, String name) {
if(aStatuses.contains(name))
  return (" CHECKED ");
else
  return ("");  
} 

private String selected(String name1, String name2) {
if(name1.equals(name2))
  return (" SELECTED ");
else
  return ("");  
}
%>
<%
//Execute Bean Methods 
java.util.Vector documents = userIBank.getCurrentIClient().getDocumentsAll();
Document curDocument = null;
//����������� ����, ��������, ���������� ���������:
String doc_type = String.valueOf( userIBank.getDocTransMgr().getDoc_type() ) ;
java.util.List statuses = java.util.Arrays.asList(userIBank.getDocTransMgr().getStatuses());
String sortBy = userIBank.getDocTransMgr().getSortBy();
//��������� ���("��" � "��"):
java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd");
String fromDateStr = userIBank.getDocTransMgr().getFromDate();
java.util.Date fromDate = formatter.parse(fromDateStr);
java.util.GregorianCalendar calendar = new java.util.GregorianCalendar();
calendar.setTime(fromDate);
String fromDateDD = String.valueOf(calendar.get(java.util.Calendar.DATE));
String fromDateMM = String.valueOf( (calendar.get(java.util.Calendar.MONTH)+1) );
String fromDateYY = String.valueOf(calendar.get(java.util.Calendar.YEAR));
String toDateStr = userIBank.getDocTransMgr().getToDate();
java.util.Date toDate = formatter.parse(toDateStr);
calendar.setTime(toDate);
String toDateDD = String.valueOf(calendar.get(java.util.Calendar.DATE));
String toDateMM = String.valueOf( (calendar.get(java.util.Calendar.MONTH)+1) );
String toDateYY = String.valueOf(calendar.get(java.util.Calendar.YEAR));
//����������� �������� ���:
calendar = new java.util.GregorianCalendar();
String todayStr=formatter.format(calendar.getTime());
String period1 = todayStr+","+todayStr;
int dayOfWeek = calendar.get(java.util.Calendar.DAY_OF_WEEK);
calendar.add( java.util.Calendar.DATE, -(dayOfWeek-calendar.getFirstDayOfWeek()) );
String firstDayOfWeekStr=formatter.format(calendar.getTime());
String period2 = firstDayOfWeekStr+","+todayStr;
calendar = new java.util.GregorianCalendar();
calendar.set(java.util.Calendar.DATE, 1);
String firstDayOfMonth=formatter.format(calendar.getTime());
String period3 = firstDayOfMonth+","+todayStr;
int month = calendar.get(java.util.Calendar.MONTH)+1;
if(month<4)
  calendar.set(java.util.Calendar.MONTH , 0);
if( (month>=4)&&(month<=6))
  calendar.set(java.util.Calendar.MONTH , 3);
if( (month>=7)&&(month<=9))
  calendar.set(java.util.Calendar.MONTH , 6);
  if(month>9)
  calendar.set(java.util.Calendar.MONTH , 9);
String firstDayOfQuarter=formatter.format(calendar.getTime()); 
String period4 = firstDayOfQuarter+","+todayStr;     
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
            <DIV class=title>���������</DIV>
            <DIV class=body><!-- --> <SCRIPT language=javascript src="/iBank/ibankjsp/common/validate.js" type=text/javascript></SCRIPT> <SCRIPT language=javascript type=text/javascript>
function ToggleStatus(n)
{
	var e = document.docform.status;
	for(var i = 0; i < e.length; i++)
		if(e[i].value == n)
			e[i].checked = !e[i].checked;
}

function SortBy(field) 
{
	var e = document.docform.sort;
	e.form.action.value = "SortBy";
	e.value = (e.value == field)?field + ' desc':field;
	e.form.submit();
}
function Read(e)
{
    var theForm = e.form;
	theForm.action.value = "Read";
	if(field_check(theForm.todate, '���� ��', 7, true) && field_check(theForm.fromdate, '���� �', 7, true))
	  theForm.submit();
}
function AddNew(e)
{
	e.form.action.value = "AddNew";
	e.form.submit();	
}	
function isChoice()
{
  var e = document.docform.elements;
  for(var i=0; i < e.length; i++)
    if(e[i].name=='documentID' && e[i].checked == true)
	  return true;
  return false;
}
function Edit(e)
{
	if(isChoice())
	 {
	   e.form.action.value = "Edit";
	   e.form.submit();	
	 }
	else
		alert('�������� ������ ��� ���������.');
}
function EditN(id)
{
   var theForm = document.docform;
   theForm.action.value = "Edit";
   var e = document.docform.elements;
   for(var i=0; i < e.length; i++)
	if(e[i].name=='documentID' && e[i].value==id)
	  e[i].checked = true;
   theForm.submit();	
}
function Delete(e)
{
	if(isChoice())
	 {
	   e.form.action.value = "Delete";
	   e.form.submit();	
	 }
	else
		alert('�������� ������ ��� ��������.');
}
function ViewDocum(e)
{
	if(isChoice())
	 {
       var docid ;
       var elems = e.form.elements;
       for(var i=0; i < elems.length; i++)
       if(elems[i].name=='documentID' && elems[i].checked == true)
         docid = elems[i].value;
       var wnd;
       if(e.form.doc_type.value =='1')  
	     wnd = window.open('/iBank/ibankjsp/PAYMENT_VIEW.jsp?docID=' + docid, 'report', 'width=660,top=0,height='+(window.screen.availHeight-100)+',resizable=yes,status=no,toolbar=no,menubar=yes,location=no,scrollbars=yes');
       else if(e.form.doc_type.value =='8')  
	     wnd = window.open('/iBank/ibankjsp/ACCREDITIVE_VIEW.jsp?docID=' + docid, 'report', 'width=660,top=0,height='+(window.screen.availHeight-100)+',resizable=yes,status=no,toolbar=no,menubar=yes,location=no,scrollbars=yes');
	   wnd.focus();
	 }
	else
		alert('�������� ������ ��� ���������.');
}
function ViewDocumN(docid)
{
   var theForm = document.docform;;
   var elems = theForm.elements;
   for(var i=0; i < elems.length; i++)
     if(elems[i].name=='documentID' && elems[i].value==docid)
        elems[i].checked = true;
   var wnd;
   if(theForm.doc_type.value =='1')  
	 wnd = window.open('/iBank/ibankjsp/PAYMENT_VIEW.jsp?docID=' + docid, 'report', 'width=660,top=0,height='+(window.screen.availHeight-100)+',resizable=yes,status=no,toolbar=no,menubar=yes,location=no,scrollbars=yes');
   else if(theForm.doc_type.value =='8')  
     wnd = window.open('/iBank/ibankjsp/ACCREDITIVE_VIEW.jsp?docID=' + docid, 'report', 'width=660,top=0,height='+(window.screen.availHeight-100)+',resizable=yes,status=no,toolbar=no,menubar=yes,location=no,scrollbars=yes');
   wnd.focus();
}
</SCRIPT>

            <FORM name=docform action="/iBank/ChooseDocumentsServlet" method=post>
            <!--Hidden Variables--> 
            <INPUT TYPE="hidden" NAME="sort" value='<%=sortBy%>'> 
            <INPUT TYPE="hidden" NAME="doc_type" value='<%=doc_type%>'> 
            <INPUT type=hidden name=action>

            <P class=gridtitle>��������� ����������</P>
            <TABLE class=inputbar>
                <TBODY>
                    <TR>
                        <TD class=label>���</TD>
                        <TD class=input><SELECT title="��� ���������" name=formid>
                            <OPTION value="1" <%=selected(doc_type, "1")%>>��������� ���������</OPTION>
                            <OPTION value="7" <%=selected(doc_type, "7")%>>��������� ����������</OPTION>
                            <OPTION value="8" <%=selected(doc_type, "8")%>>����������</OPTION>
                            <OPTION value="9" <%=selected(doc_type, "9")%>>���������� ���������</OPTION>
                            <OPTION value="10"<%=selected(doc_type,"10")%>>��������� �� ������ �� �������</OPTION>
                        </SELECT></TD>
                        <TD class=button rowSpan=2><INPUT onclick=Read(this) type=button value=��������>&nbsp; <INPUT type=reset value=�������� name=btnreset></TD>
                    </TR>
                    <TR>
                        <TD class=label>������</TD>
                        <TD class=input>
                          <INPUT title="��������� ����" type=hidden value='<%=fromDateStr%>' name=fromdate>
                          <INPUT title="��������� ����.����"  maxLength=2 onchange=date_onchange(this) size=2 value='<%=fromDateDD%>' name=fromdatedd> 
                          <INPUT title="��������� ����.�����" maxLength=2 onchange=date_onchange(this) size=2 value='<%=fromDateMM%>' name=fromdatemm> 
                          <INPUT title="��������� ����.���"   maxLength=4 onchange=date_onchange(this) size=4 value='<%=fromDateYY%>' name=fromdateyy>&nbsp;&nbsp;-
                          <INPUT title="�������� ����"  type=hidden value='<%=toDateStr%>' name=todate> 
                          <INPUT title="�������� ����.����"   maxLength=2 onchange=date_onchange(this) size=2 value='<%=toDateDD%>' name=todatedd> 
                          <INPUT title="�������� ����.�����"  maxLength=2 onchange=date_onchange(this) size=2 value='<%=toDateMM%>' name=todatemm> 
                          <INPUT title="�������� ����.���"    maxLength=4 onchange=date_onchange(this) size=4 value='<%=toDateYY%>' name=todateyy> &nbsp; 
                          <SELECT onchange="period_onchange(this, 'fromdate', 'todate')" name=period>
                            <OPTION selected>( ���������� ������ )</OPTION>
                            <OPTION value=<%=period1%>>�� ������� ����</OPTION>
                            <OPTION value=<%=period2%>>�� ������� ������</OPTION>
                            <OPTION value=<%=period3%>>�� ������� �����</OPTION>
                            <OPTION value=<%=period4%>>�� ������� �������</OPTION>
                          </SELECT></TD>
                    </TR>
                    <TR>
                        <TD class=label>������</TD>
                        <TD class=input colSpan=2>
                         |<A style="COLOR: black; TEXT-DECORATION: none" href="javascript:ToggleStatus(0)"><INPUT type=checkbox <%=checked(statuses,"0")%> value=0 name=status>�����</A>
                         |<A style="COLOR: black; TEXT-DECORATION: none" href="javascript:ToggleStatus(1)"><INPUT type=checkbox <%=checked(statuses,"1")%> value=1 name=status>��������</A>
                         |<A style="COLOR: black; TEXT-DECORATION: none" href="javascript:ToggleStatus(2)"><INPUT type=checkbox <%=checked(statuses,"2")%> value=2 name=status>���������</A> 
                         |<A style="COLOR: black; TEXT-DECORATION: none" href="javascript:ToggleStatus(3)"><INPUT type=checkbox <%=checked(statuses,"3")%> value=3 name=status>�� ���������</A> 
                         |<A style="COLOR: black; TEXT-DECORATION: none" href="javascript:ToggleStatus(4)"><INPUT type=checkbox <%=checked(statuses,"4")%> value=4 name=status>�� ����������</A> 
                         |<A style="COLOR: black; TEXT-DECORATION: none" href="javascript:ToggleStatus(5)"><INPUT type=checkbox <%=checked(statuses,"5")%> value=5 name=status>��������</A> 
                         |<A style="COLOR: black; TEXT-DECORATION: none" href="javascript:ToggleStatus(6)"><INPUT type=checkbox <%=checked(statuses,"6")%> value=6 name=status>���������</A> 
                         |<A style="COLOR: black; TEXT-DECORATION: none" href="javascript:ToggleStatus(7)"><INPUT type=checkbox <%=checked(statuses,"7")%> value=7 name=status>������</A>|
                        </TD>
                    </TR>
                </TBODY>
            </TABLE>
            <P class=gridtitle>������ ����������</P>
            <TABLE class=grid>
                <TBODY>
                    <TR>
                        <TH noWrap><A title="����������� �� ���� '������'" href="javascript:SortBy('status_doc')">������</A>              <%=isUp(sortBy, "status_doc")%> </TH>
                        <TH noWrap><A title="����������� �� ���� '���'" href="javascript:SortBy('type_oper')">���</A>                     <%=isUp(sortBy, "type_oper")%>  </TH>
                        <TH noWrap><A title="����������� �� ���� '����'" href="javascript:SortBy('date_doc')">����</A>                    <%=isUp(sortBy, "date_doc")%>   </TH>
                        <TH noWrap><A title="����������� �� ���� '�����'" href="javascript:SortBy('num_doc')">�����</A>                   <%=isUp(sortBy, "num_doc")%>    </TH>
                        <TH noWrap><A title="����������� �� ���� '�������������'" href="javascript:SortBy('rcpt_name')">�������������</A> <%=isUp(sortBy, "rcpt_name")%>  </TH>
                        <TH noWrap><A title="����������� �� ���� '�����'" href="javascript:SortBy('amount')">�����</A>                    <%=isUp(sortBy, "amount")%>     </TH>
                    </TR>
                     
                     <%if(documents.size() > 0) {
                        for (int i=0; i  <  documents.size(); i++){ curDocument = (Document)documents.elementAt(i); %>
                        <TR>
                        
                         <TD width=102><INPUT type="radio" name="documentID" value="<%=curDocument.getDoc_id().getIdAsString()%>"><%= curDocument.rtStatus_doc()%></TD>
                         <TD width=32><A title=�������� href="javascript:EditN('<%=curDocument.getDoc_id().getIdAsString()%>')"><%= curDocument.getType()%></A></TD>
                         <TD width=70><%= curDocument.rtDate_doc() %></TD>
                         <TD align=right width=48><A title="�������� ���������" href="javascript:ViewDocumN('<%=curDocument.getDoc_id().getIdAsString()%>')"><%= curDocument.rtNum_doc() %></A></TD>
                         <%if(curDocument instanceof Payment) { %>
                           <TD><%= ((Payment)curDocument).rtRecipient().rtName() %></TD>
                           <TD align=right><%= ((Payment)curDocument).rtAmount() %></TD>
                         <%} else if (curDocument instanceof Accreditive){%>
                           <TD><%= ((Accreditive)curDocument).rtRecipient().rtName() %></TD>
                           <TD align=right><%= ((Accreditive)curDocument).rtAmount() %></TD>
                         <%}%>  
                        </TR>
                      <%}
                     } else { %>
                       <TR>
                        <TD align=center colspan="6">��� ������ ��� ������</TD>
                    </TR>            
                   <%} %>
                  
                </TBODY>
            </TABLE>
            <TABLE class=gridfoot>
                <TBODY>
                    <TR>
                         <TD align=right>����� <%=documents.size()%> ��������(��).</TD> 
                    </TR>
                </TBODY>
            </TABLE>
            <BR>
              <INPUT onclick=AddNew(this) type=button value=�������> 
              <INPUT onclick=Edit(this) type=button value=��������>  
              <INPUT onclick=Delete(this) type=button value=�������>
              <INPUT onclick=SetAction(this) type=button value=�������> 
              <INPUT onclick=SetAction(this) type=button value=���������> 
              <INPUT onclick=SetAction(this) type=button value=��������> 
              <INPUT onclick=ViewDocum(this) type=button value=��������>
            </FORM>
            <P></P>
            <A href="http://it-ildar/iBank/ibankjsp/DOCEXPORT.jsp?formid=0&amp;fromdate=17/09/2002&amp;todate=18/09/2002&amp;statusmask=2047&amp;sort=DocDate">������� ������</A>
            <P class=tips>� ������� <B>���������</B> ��� �������� ��� ���� ��������� �� ��� ������� ������������ � �������. ��� ��������� ������ ���������� �������� ��� ���������, ��� ������ � ������ ��� � ������� <B>��������</B>. ��� �������� ������ ��������� �������� ��� ��������� � ������� <B>�������</B>. �� ������ <B>��������</B> ������������ ��������, <B>�������</B> ��������, ������������ ��� <B>�������</B>, <B>���������</B> � ����. ��� ������ ��������� (�������) �������� ����� � ������� <B>��������</B>.</P>
            <!-- --></DIV>
            </TD>
        </TR>
    </TBODY>
</TABLE>
</BODY>
</HTML>
