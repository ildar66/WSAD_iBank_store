<%@ page import="com.ibm.etools.webservice.util.*" contentType="text/html; charset=utf-8" %>
<jsp:useBean id="viewModel" scope="session" class="com.ibm.etools.webservice.uddiexplorer.viewmodel.ViewModel" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>

<body bgcolor="#D6D3CE">

<table width="100%" cellpadding="0" cellspacing="0" border="0">
<tr>
<td valign="middle" align="center" width="25" height="25" background=<%=response.encodeURL("../images/toolbar/leftborder.gif")%>><img src=<%=response.encodeURL("../images/status.gif")%> width="16" height="16" border="0"></td>
<td valign="middle" align="left" width="*" height="25" background=<%=response.encodeURL("../images/toolbar/middlebk.gif")%>><FONT FACE="Tahoma" SIZE="-1" color="Black"><%=viewModel.getMessage("TITLE_BAR_STATUS")%></font></td>
<td valign="middle" align="center" width="25" height="25" background=<%=response.encodeURL("../images/toolbar/middlebk.gif")%>><a href=<%=response.encodeURL("../content/status.jsp?"+UrlParams.CLEAR)%> target=<%=UrlParams.WSEXP_STATUS_PAGE_TARGET%>><img src=<%=response.encodeURL("../images/clear.gif")%> width="16" height="16" alt=<%=viewModel.getMessage("ALT_CLEAR")%> border="0"></a></td>
<td valign="middle" align="center" width="10" height="25" background=<%=response.encodeURL("../images/toolbar/rightborder.gif")%>>&nbsp;</a></td>
</tr>

</table>
</body>
</html>
