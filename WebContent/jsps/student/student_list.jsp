<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib  prefix="s"  uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Student模块的查询展示页面</title>
</head>
<body>
   
      <form action=""  method="post">
        <table  align="center"  border="2px"  bordercolor="green">
          <tr>
           <td>序号</td>
           <td>姓名</td>
           <td>性别</td>
           <td>班级</td>
           <td>操作</td>
          </tr>
        
        <s:iterator  id="map" value="list"  status="i">
            <tr>
           <td><s:property  value="#i.count" /></td>
           <td><s:property value="#map.name"/> </td>
           <td><s:property value="#map.sex"/></td>
           <td><s:property value="#map.classroom.className"/></td>
           <td>
               <a href="<%=request.getContextPath()%>/student!addPage.action">添加</a>  
               <a href="<%=request.getContextPath()%>/student!editPage.action?id=<s:property value="#map.sid"/>">修改   </a>
               <a href="<%=request.getContextPath()%>/student!delete.action?id=<s:property value="#map.sid"/>">删除</a>
           </td>
          </tr>
        </s:iterator>
        </table>
      
      
      </form>




</body>
</html>