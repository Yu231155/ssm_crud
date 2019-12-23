<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu</title>
<!-- JQuery -->
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.11.0.min.js"></script>
<link href="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<style>
.b{	
	height:30px;
	border:1px solid black;
	border-collapse: collapse; 
}
.c{
	background:#43CD80;
}
.d{
	width:100%;
}
</style>
</head>
<body>
	<div class="row">
		<div class="col-md-3">
			<br/><br/>基本情報一覽
			<br/><br/>メニュー
			<br/><br/>
			<table class="b">
				<tr>
					<td class="b c">支社</td>
					<td class="b">
						<select id="zhishe" class="d">
							<option>1</option>
							<option>2</option>
							<option>3</option>
						</select>
					</td>
				</tr>
				<tr>
					<td class="b c">部門</td>
					<td class="b">
						<select id="bumen" class="d">
							<option>1</option>
							<option>2</option>
							<option>3</option>
						</select>
					</td>
				</tr>
				<tr>
					<td class="b c">開催</td>
					<td class="b">
						<select id="kaicui">
							<option>1</option>
							<option>2</option>
							<option>3</option>
						</select>
						年度
						<select>
							<option>1</option>
							<option>2</option>
							<option>3</option>
						</select>
					</td>
				</tr>
				<tr>
					<td class="b c">対象オーダ</td>
					<td class="b">
						<select id="duixiang" class="d">
							<option>1</option>
							<option>2</option>
							<option>3</option>
						</select>
					</td>
				</tr>
			</table>
			<button id="denglu">品質推進会登録</button>&nbsp;<button id="find">検索</button>
		</div>
	</div>
	<table id="list" class="table table-bordered">
		<tr>
			<th>会議名称</th>
			<th>支社</th>
			<th>部門</th>
			<th>対象案件</th>
			<th>発信者</th>
			<th>開催日時</th>
			<th>開催場所</th>
			<th>議事録開催済み</th>
		</tr>
	</table>
	<script>
	$(document).ready(function(){ 
		$.ajax({
			url : '${pageContext.request.contextPath}/select',
			type : 'GET',
			async : false,
			datatype : 'json',
			success : function(data) {
				//根据查询数据拼接表格
				$(data).each(
					function (i, values) {
						debugger;
						$("#list").append(
							"<tr>"+
								"<td></td>"+
								"<td>"+values.orderNm+"</td>"+
								"<td>"+values.productSectNm+"</td>"+
								"<td></td>"+
								"<td></td>"+
								"<td>"+values.productUserFullName+"</td>"+
								"<td></td>"+
								"<td>"+values.processName+"</td>"+
							"</tr>"
						);
					}
				);
			}
		});
	}); 
	
	$("#find").click(function(){
		debugger
		var zhishe = document.getElementById("zhishe").value;
		var bumen = document.getElementById("bumen").value;
		var kaicui = document.getElementById("kaicui").value;
		var duixiang = document.getElementById("duixiang").value;
		$.ajax({
			url : '${pageContext.request.contextPath}/find',
			type : 'GET',
			async : false,
			data : {"orderNm":zhishe,"productSectNm":bumen,"productUserFullName":kaicui,"processName":duixiang},
			datatype : 'json',
			success : function(data) {
				//根据查询数据拼接表格
				$("#list").html('');
				$("#list").append("<tr><th>会議名称</th><th>支社</th><th>部門</th><th>対象案件</th><th>発信者</th><th>開催日時</th><th>開催場所</th><th>議事録開催済み</th></tr>")
				debugger
				$(data).each(
					function (i, values) {
						debugger;
						$("#list").append(
							"<tr>"+
								"<td class=\"b\"> </td>"+
								"<td class=\"b\">"+values.orderNm+"</td>"+
								"<td class=\"b\">"+values.productSectNm+"</td>"+
								"<td class=\"b\"> </td>"+
								"<td class=\"b\"> </td>"+
								"<td class=\"b\">"+values.productUserFullName+"</td>"+
								"<td class=\"b\"> </td>"+
								"<td class=\"b\">"+values.processName+"</td>"+
							"</tr>"
						);
					}
				);
			}
		});
	})
	
	$("#denglu").click(function(){
		location.href = "${pageContext.request.contextPath}/views/zhuye.jsp";
	})
	</script>
</body>
</html>