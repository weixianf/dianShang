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
   
      <form name="editForm" action="student!add.action" method="post">
        <table  align="center"  border="2px"  bordercolor="green">
          <tr>
           <td>序号</td>
           <td>姓名</td>
           <td>性别</td>
           <td>班级</td>
          </tr>
        
           <tr>
           <td><input type="text" name="student.sid" /></td>
           <td><input type="text" name="student.name" /></td>
           <td><input type="text" name="student.sex" /></td>
           <td>
           		<SELECT name="student.classroom.classId">
			     <option value="-" >---请选择班级id---</option>
			     <s:iterator value="list" id="map" >
			     <option value="<s:property value="#map.classId"/>"><s:property value="#map.classId"/></option>
			     </s:iterator>
			    </SELECT>
           </td>
           </tr>
           
           <tr>
           <td><input type="submit"></td>
           </tr>
        </table>
      
     </form>




</body>
</html>