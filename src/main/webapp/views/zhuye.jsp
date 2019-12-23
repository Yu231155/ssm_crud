<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>品質推進会 開催通知</title>
<!-- JQuery -->
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.11.0.min.js"></script>
<link href="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<style>
html, body, div, ul, li, h1, h2, h3, h4, h5, h6, p, dl, dt, dd, ol, form, input, textarea, th, td, select {
    margin: 0;
    padding: 0;
}
.a{
	border:0;
	border-top:1px solid #5CACEE;
	border-bottom:1px solid #5CACEE;
}
.b{	
	height:30px;
	border:1px solid black;
	border-collapse: collapse; 
}
</style>
<body>
	<%
	Object obj=session.getAttribute("yonghu");
	/* if(obj==null){
		out.print("请先登录");
		response.setHeader("refresh","3;URL=index.jsp");
	}else{
	    String a=new String(obj.toString());
	    out.print("欢迎&nbsp;"+a+"&nbsp;登录"); 
	} */
	%>
	<div class="row">
		<div class="col-md-12">
			<div style="width:100%;text-align:center">
			<br/><br/>
				<h1>◆◆◆ 品質推進会 開催通知 ◆◆◆</h1>
				<table class="a" style="float:right;">
					<tr>
						<td class="a" style="background:#5CACEE;color:white;">起票者</td>
						<td id="username" class="a" style="width:100px;"><b><% String a=new String(obj.toString());out.print(a); %></b></td>
						<td class="a" style="background:#5CACEE;color:white;">最終更新者</td>
						<td class="a" style="width:100px;"></td>
					</tr>
				</table>
			</div>
			<div>
				<h1>0. 報告区分</h1>
				<table class="b" style="width:100%">
					<tr>
						<td class="b" style="background:#43CD80;width:150px">報告区分</td>
						<td class="b"><input type="radio" name="a"/>開催通知<input type="radio" name="a"/>議事錄</td>
					</tr>
				</table>
			</div>
			<br/><br/>
			<div>
				<h1>1. 品質推進会 実施部門</h1>
				<table class="b" style="width:100%">
					<tr>
						<td class="b" style="background:#43CD80;width:10%;">支社名</td>
						<td id="txtBranchName" class="b" style="width:40%;"></td>
						<td class="b" style="background:#43CD80;width:10%;">対象部門</td>
						<td id="txtTargetSectName" class="b" style="width:40%;"></td>
					</tr>
					<tr>
						<td class="b" style="background:#43CD80;">開催担当者</td>
						<td id="txtOpenerUserName" class="b"></td>
						<td class="b" style="background:#43CD80;">会議名</td>
						<td id="txtConferenceName" class="b"></td>
					</tr>
				</table>
			</div>
			<br/><br/>
			<div>
				<h1>2. 品質推進会 実施内容</h1>
				<table class="b" style="width:100%">
					<tr>
						<td class="b" style="background:#43CD80;width:10%;">発信者<span style="float:right;" class="glyphicon glyphicon-search"></span></td>
						<td class="b" id="txtSenderUserName"></td>
					</tr>
					<tr>
						<td class="b" style="background:#43CD80;width:10%;">開催日時<span style="float:right;" class="glyphicon glyphicon-calendar"></span></td>
						<td class="b"><input type="text"/>&nbsp;-&nbsp;<input type="text"/>&nbsp;第<input style="width:15px" type="text" value="1"/>回目</td>
					</tr>
					<tr>
						<td class="b" style="background:#43CD80;width:10%;">開催場所</td>
						<td class="b"><input type="text"/></td>
					</tr>
					<tr>
						<td class="b" style="background:#43CD80;width:10%;">リスクフォロー<br/>対象案件</td>
						<td class="b">
							<table id="gdvIncompletePjList" class="b" style="width:80%;background:#E0EEEE;">
								<tr style="height:40px;">
									<th class="text-center b">案件番号</th>
									<th class="text-center b">工事名称</th>
									<th class="text-center b">担当部門</th>
									<th class="text-center b">担当者</th>
									<th class="text-center b">プロセス</th>
									<th class="text-center b">検討表</th>
								</tr>
							</table>
					<tr>
						<td class="b" style="background:#43CD80;width:10%;height:200px;">レビューポイント</td>
						<td class="b"></td>
					</tr>
					<tr>
						<td class="b" style="background:#43CD80;width:10%;height:100px;">レビュアー<br/>（出席予定者）</td>
						<td class="b"></td>
					</tr>
					<tr>
						<td class="b" style="background:#43CD80;width:10%;">添付ファイル</td>
						<td class="b"><input type="file" multiple = "multiple"/></td>
					</tr>
					<tr>
						<td class="b" style="background:#43CD80;width:10%;">開催案内作成</td>
						<td class="b"><button disabled="disabled" style="color:#8C8C8C">開催案内</button></td>
					</tr>
				</table>
			</div>
			<br/><br/>
			<div>
				<h1>3. 議事録</h1>
				<h2>(1)出席者</h2>
				<table class="b" style="width:100%">
					<tr>
						<td class="b" style="background:#43CD80;width:10%;height:100px;">レビュアー<br/>（出席者）</td>
						<td class="b"></td>
					</tr>
				</table>
				<h2>(2)議事内容</h2>
				<textarea style="width:100%;height:400px;"></textarea>
			</div>
			<table style="width:100%">
				<tr>
					<td><button>品質推進会議登録</button></td>
					<td><button>品質推進会議削除</button></td>
					<td><button data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">キャンセル</button></td>
				</tr>
			</table>
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
		      </div>
		      <div class="modal-body">
		        <form>
		       	<div class="form-group">
		            <label for="message-text" class="control-label">案件検索画面に移動します。よろしいですか？</label>
		          </div>
		        </form>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">返回</button>
		        <button type="button" class="btn btn-primary">确认</button>
		      </div>
		    </div>
		  </div>
		</div>
		</div>
	</div>
	
	<script>
		$(document).ready(function(){  
			debugger;
			var username = "<%=a %>";
		    $.ajax({
		    	url:"${pageContext.request.contextPath}/selectAll",
		    	type : "POST",
		    	data : {"userName":username},
		    	success : function(result) {
		    		debugger;
		    		document.getElementById('txtBranchName').innerHTML = result[0].a01m002AllsectNm;
		    		document.getElementById('txtTargetSectName').innerHTML = result[0].a01m003PostclsNm;
		    		document.getElementById('txtOpenerUserName').innerHTML = result[0].a01m002AllsectNm+" "+result[0].a01m003PostclsNm+" "+result[0].a010Full;
		    		document.getElementById('txtConferenceName').innerHTML = result[0].txtConferenceName;
		    		document.getElementById('txtSenderUserName').innerHTML = result[0].a01m002AllsectNm+" "+result[0].a01m003PostclsNm+" "+result[0].a010Full;
		    	}
		    })
		    
		    $.ajax({
		    	url:"${pageContext.request.contextPath}/select",
		    	type : "POST",
		    	success : function(result) {
		    		$(result).each(
						function (i, values) {
							debugger;
							$("#gdvIncompletePjList").append(
								"<tr>"+
								"<td class=\"text-center b\">"+values.projectNo+"</td>"+
								"<td class=\"text-center b\">"+values.orderNm+"</td>"+
								"<td class=\"text-center b\">"+values.productSectNm+"</td>"+
								"<td class=\"text-center b\">"+values.productUserFullName+"</td>"+
								"<td class=\"text-center b\">"+values.processName+"</td>"+
								"<td class=\"text-center b\"><button style=\"background:grey;\">DL</button></td>"
								+"</tr>"
							)
						}
					);
		    	}
		    })
		});  
	</script>
</body>
</html>