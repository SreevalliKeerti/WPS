<%@ page import="java.util.*"%>
<jsp:useBean id="showDataBean" class="beans.ShowDataBean"
	scope="request" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<%
	String eid = request.getParameter("id");
	showDataBean.setEid(Integer.parseInt(eid));
%>
<table cellspacing="0" cellpadding="0">
	<%
		List<Object> list = new ArrayList<Object>();
		list = showDataBean.getDb_Data();
		if(Integer.parseInt(eid) > list.size()){
			%>
	<div class="alert alert-danger">Employee details with the given
		ID is not found!!</div>
	<%
		}
		for (int i = 0; i < list.size(); i++) {
			showDataBean.setObj(list.get(i));
	%>

	<tr>
		<td>EmpId:&nbsp;</td>
		<td>
			<%
				out.print(showDataBean.getid());
			%>
		</td>
	</tr>
	<tr>
		<td>Name:&nbsp;</td>
		<td>
			<%
				out.print(showDataBean.getname());
			%>
		</td>
	</tr>
	<tr>
		<td>Date of Birth:&nbsp;</td>
		<td>
			<%
				out.print(showDataBean.getdob());
			%>
		</td>
	</tr>
	<tr>
		<td>Image:&nbsp;</td>
		<td><img src="<%=showDataBean.getimage()%>" width="100"
			height="100" /></td>
	</tr>
	<%
		}
	%>
</table>