<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>首页</title>
  </head>
  <body>
    <h2>根据企业ID，查找其所有业务企业</h2>
    <form method = "post" action="event1.jsp">
	<font>输入企业ID:<input type = "text" name = "id1"></font>
	<br><br>
	<input type = "submit" name = "submit" value = "查询" >
	</form><br><br>
	
	<h2>根据本方企业ID和对方企业ID，发出建立关系申请</h2>
	<form method = "post" action="event2.jsp">
	<font>输入本方企业ID:<input type = "text" name = "id2"></font><br><br>
	<font>输入对方企业ID:<input type = "text" name = "id3"></font><br><br>
	<font>输入关系类型:<input type = "text" name = "id4"></font><br><br>
	<font>输入本方在关系中所处的位置:<input type = "text" name = "id5"></font><br><br>
	<font>输入分配给对方的内部编号：<input type = "text" name = "id6"></font><br>
	<br><br>
	<input type = "submit" name = "submit" value = "确定" >
	</form><br><br>
	
	
	<h2>根据企业ID，查找其所收到的建立关系的申请</h2>
	<form method = "post" action="event3.jsp">
	<font>输入企业ID:<input type = "text" name = "id7"></font><br><br>
	<font>输入企业关系(等待审核WAITAPPROVE，审核成功NORMAL，审核失败INVALID):<input type = "text" name = "id8"></font><br><br>
	<input type = "submit" name = "submit" value = "查询" >
	</form><br><br>
	
	<h2>根据关系申请的ID，提交审核员审核意见和分配给对方的内部编号</h2>
	<form method = "post" action="event4.jsp">
	<font>输入关系申请的ID:<input type = "text" name = "id9"></font><br><br>
	<font>输入审核意见：<input type = "text" name = "id10"></font><br><br>
	<font>本方在关系中所处的位置（from or to）：<input type = "text" name = "id11"></font><br><br>
	<font>输入审核状态:<input type = "text" name = "id12"></font><br><br>
	<font>输入分配给对方的内部编号:<input type = "text" name = "id13"></font><br><br>
	<input type = "submit" name = "submit" value = "确定" >
	</form><br><br>
	
	<h2>根据关系ID，取消其与其他企业的关系</h2>
	<form method = "post" action="event5.jsp">
	<font>输入关系ID:<input type = "text" name = "id14"></font><br><br>
	<input type = "submit" name = "submit" value = "确认删除" >
	</form><br><br>
	
  </body>
</html>
