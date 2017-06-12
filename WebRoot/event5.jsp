<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.io.IOException,org.apache.commons.httpclient.methods.*,org.apache.commons.httpclient.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>取消关系</title>

  </head>
  
  <body>
    <%
    	String deleteId =request.getParameter("id14");
    	HttpClient httpClient = new HttpClient();
		DeleteMethod delete = new DeleteMethod("http://121.250.213.177:8080/Jersey/API/services/enterpriseRelation/"
				+ "deleteEnterpriseRelation?id="+deleteId+"&ak=123");
		delete.addRequestHeader("Accept", "application/json;charset=UTF-8");
		delete.addRequestHeader("Content-Type", "application/json;charset=UTF-8");
		try {
			httpClient.executeMethod(delete);
			String re=delete.getResponseBodyAsString();
			out.println(re.toString()+"删除成功！");
		} catch (IOException e) {
			e.printStackTrace();
		}
     %>
     <a href="index.jsp">返回</a>
  </body>
</html>
