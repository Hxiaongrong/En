<%@ page language="java" import="java.util.*,bean.GsonDataAnalysis3" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.io.IOException,org.apache.commons.httpclient.methods.*,com.google.gson.Gson,org.apache.commons.httpclient.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>查找建立关系申请</title>
  </head>
  
  <body>
    <%
    	String id=request.getParameter("id7");
    	String status=request.getParameter("id8");
    	Gson gson = new Gson();
    	HttpClient httpClient = new HttpClient();
    	GetMethod get = new GetMethod("http://121.250.213.177:8080/Jersey/API/services/enterpriseRelation/"
				+ "getRelationApply?enterpriseId="+id+"&status="+status+"&from=1&pageNum=10&ak=123");
		get.addRequestHeader("Accept", "application/json;charset=UTF-8");
		get.addRequestHeader("Content-Type", "application/json;charset=UTF-8");
		
		try {
			httpClient.executeMethod(get);
			String re=get.getResponseBodyAsString().toString();
			System.out.println(re);
			GsonDataAnalysis3 gda = gson.fromJson(
					re, GsonDataAnalysis3.class);
			for(int i = 0; i < gda.getData().size(); i ++) {
				out.print("关系id："+ gda.getData().get(i).getId() + "  ");
				out.print("关系名称：" + gda.getData().get(i).getGxmc() + "  ");
				out.print("对方企业id：" + gda.getData().get(i).getDfId()+ "  ");
	            out.print("对方企业名称：" + gda.getData().get(i).getDfMc()+"  ");
	            out.println("对方企业给本方企业分配的内部编号"+gda.getData().get(i).getDfNbbh()+"<br>");
	        }
			
		} catch (IOException e) {
			e.printStackTrace();
		}
     %>
     <a href="index.jsp">返回</a>
  </body>
</html>
