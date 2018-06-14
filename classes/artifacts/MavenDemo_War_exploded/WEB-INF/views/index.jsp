<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
	<h2>Hello World!</h2>
	<a href="index/toindex.do">测试</a>
	<form action="filesUpload/file.do" method="post" enctype="multipart/form-data">
		<table>
			<tr>
				<td><input type="file" name="file"/></td>
			</tr>
			<tr><input type="submit" value="上传"/></tr>
		</table>
	</form>
	<form action="filesUpload/multipart.do" method="post" enctype="multipart/form-data">
		<table>
			<tr>
				<td><input type="file" name="file"/></td>
			</tr>
			<tr><input type="submit" value="上传"/></tr>
		</table>
	</form>
	<a href="./alipay_index.jsp">去支付页面</a>
</body>
</html>
