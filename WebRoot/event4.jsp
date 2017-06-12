<%@ page language="java" import="java.util.*,bean.Event4" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.io.IOException,org.apache.commons.httpclient.methods.*,com.google.gson.Gson,org.apache.commons.httpclient.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>提交审核员审核意见和分配给对方的内部编号</title>
  </head>
  
  <body>
    <%
    	String relationApplyId=request.getParameter("id9");
    	String checkAdvice=request.getParameter("id10");
    	String bfposition=request.getParameter("id11");
    	String status=request.getParameter("id12");
    	String dfbh=request.getParameter("id13");
    	Gson gson =new Gson();
    	Event4 e4=new Event4(relationApplyId,checkAdvice,bfposition,status,dfbh);
    	String str = gson.toJson(e4);
    	HttpClient httpClient = new HttpClient();
    	PostMethod post=new PostMethod("http://121.250.213.177:8080/Jersey/API/services/enterpriseRelation/"
				+ "saveCheckAdvice?ak=123");
		post.addRequestHeader("Accept", "application/json;charset=UTF-8");
		post.addRequestHeader("Content-Type", "application/json;charset=UTF-8");
		post.setRequestBody(str);
		
		try {
			httpClient.executeMethod(post);
			String re=post.getResponseBodyAsString();
			out.println(re.toString()+"\tsuccess!");
		} catch (IOException e) {
			e.printStackTrace();
		}
     %>
     <a href="index.jsp">返回</a>
  </body>
</html>
