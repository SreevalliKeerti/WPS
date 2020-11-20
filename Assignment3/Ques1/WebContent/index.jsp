<%@ page import="java.util.*"%>
<jsp:useBean id="showDataBean" class="beans.ShowDataBean"
	scope="request" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">

<table width="900" cellspacing="0" cellpadding="0">
	<tr>
		<td>EmpId</td>
		<td>Name</td>
		<td>Date of Birth</td>
		<td>Image</td>

	</tr>
	<%
        List<Object> list=new ArrayList<Object>();
        list=showDataBean.getDb_Data();
        for(int i=0;i<list.size();i++)
        {
            showDataBean.setObj(list.get(i));
        %>

	<tr>
		<td>
			<%
            out.print(showDataBean.getid());
         
        %>
		</td>
		<td>
			<%
            out.print(showDataBean.getname());
         
        %>
		</td>
		<td>
			<%
            out.print(showDataBean.getdob());
        %>
		</td>
		<td><img src="<%=showDataBean.getimage()%>" width="100"
			height="100" /></td>


	</tr>
	<% }%>
</table>