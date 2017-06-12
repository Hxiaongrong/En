<%@ page language="java" import="java.util.*,bean.GsonDataAnalysis" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.io.IOException,org.apache.commons.httpclient.methods.*,com.google.gson.Gson,org.apache.commons.httpclient.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>查找业务企业</title>
  </head>
  
  <body>
	<%
		Gson gson = new Gson();
		HttpClient httpClient = new HttpClient();
		String id1=request.getParameter("id1");
		GetMethod get = new GetMethod("http://121.250.213.177:8080/Jersey/API/services/enterpriseRelation/"
				+ "getPartnersByEnterpriseId?enterpriseId="+id1+"&relationshipType=Supply_to&position=from&from=1&pageNum=10&ak=123");
		get.addRequestHeader("Accept", "application/json;charset=UTF-8");
		get.addRequestHeader("Content-Type", "application/json;charset=UTF-8");
		
		try {
			httpClient.executeMethod(get);
			String re=get.getResponseBodyAsString().toString();
			System.out.println(re);
			GsonDataAnalysis gda = gson.fromJson(
					re, GsonDataAnalysis.class);
			for(int i = 0; i < gda.getData().size(); i ++) {
				out.print("厂家名称："+ gda.getData().get(i).getMc() + "， ");
				out.print("关系名称：" + gda.getData().get(i).getGxmc() + "， ");
				out.print("厂家id：" + gda.getData().get(i).getId()+ "， ");
	            out.print("关系id：" + gda.getData().get(i).getGxid()+ "， ");
	            out.print("厂家分配给from厂家在的内部编号：" + gda.getData().get(i).getFromInTo()+ "， ");
	            out.print("from厂家分配给to厂家在的内部编号：" + gda.getData().get(i).getToInFrom());
	            //
	            out.print("<br><br>");
	        }
			
		} catch (IOException e) {
			e.printStackTrace();
		}
	 %>
	 <a href="index.jsp">返回</a>
  </body>
</html>
