<%@ page language="java" import="java.util.*,bean.Event2" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.io.IOException,org.apache.commons.httpclient.methods.*,com.google.gson.Gson,org.apache.commons.httpclient.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>发出建立关系申请</title>
  </head>
  
  <body>
  	<%
  		String bfqyid = request.getParameter("id2");
  		String dfqyid = request.getParameter("id3");
  		String relationType = request.getParameter("id4");
  		String bfposition = request.getParameter("id5");
  		String dfbh = request.getParameter("id6");
  		
  		Gson gson =new Gson();
  		Event2 e2=new Event2(bfqyid,dfqyid,relationType,bfposition,dfbh);
  		String str = gson.toJson(e2);
  		HttpClient httpClient = new HttpClient();
  		PostMethod post=new PostMethod("http://121.250.213.177:8080/Jersey/API/services/enterpriseRelation/"
				+ "saveRelationApply?ak=123");
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






