<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

  <head>
  
<script>

	function doWrite() {
		
		var f = document.wForm;
		
		if(f.title.value == ""){
			alert("제목을 입력하세요");
			f.title.focus(); 
			return false;			
		}	
			
		
		if(f.content.value ==""){
			alert("내용을 입력하세요");
			f.content.focus();
			return false;			
		}
		
		return true;		
	}


	$(document).ready(function(){
		
		$(':button').click(function(){			
			location.href="list.jsp";			
		});		
	});
	
	
</script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Business Casual - Start Bootstrap Theme</title>

    <!-- Bootstrap core CSS -->
    <link href="/MiniProject2/Resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
    <link href="/MiniProject2/Resources/css/business-casual.css" rel="stylesheet">

  </head>

  <body>

    <div class="tagline-upper text-center text-heading text-shadow text-white mt-5 d-none d-lg-block">Business Casual</div>
    <div class="tagline-lower text-center text-expanded text-shadow text-uppercase text-white mb-5 d-none d-lg-block">3481 Melrose Place | Beverly Hills, CA 90210 | 123.456.7890</div>

    <jsp:include page="../include/topMenu.jsp" />


	<section>
    <div class="container">
    <div class="bg-faded p-4 my-4">
	<div align="center">
		 <hr class="divider">
        <h2 class="text-center text-lg text-uppercase my-0">
          <strong>게시글 등록</strong>
        </h2>
        <hr class="divider">
			
		<br/>
		
		<form action="/MiniProject2/write.do" method="post" name = "wForm" onsubmit="return doWrite()" enctype="multipart/form-data">
			<input type="hidden" name="writer" value="${ userVO.id }" />
			<table border="1" style="width:80%" >
				<tr>
					<th width ="23%">제목</th>
					<td><input type="text" name="title" size ="50"/></td>
				</tr>
				
				<tr>
					<th width ="23%">글쓴이</th>
						<td><input type="hidden" name="writer" size ="50" value="${ userVO.nickname }"/> ${ userVO.nickname }</td>
				</tr>
				
				<tr>
					<th width ="23%">내용</th>
					<td><textarea name="content" rows ="10" cols="50"></textarea></td>
				</tr>
				<tr>
					<th>첨부파일</th>
					<td>
						<input type="file" name="attachfile1" size=40/>
						<input type="file" name="attachfile2" size=40/>
					</td>
				</tr>
						
			</table>
			<br/><br/>
			<input type="submit" value = " 등록 " />
			<input type="button" value = " 목록 " />
		</form>
	
</div>
</div>
</div>

	</section>

     <!-- /.container -->
     

    <footer>
           <jsp:include page="../include/bottom.jsp" />      
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="/MiniProject2/Resources/vendor/jquery/jquery.min.js"></script>
    <script src="/MiniProject2/Resources/vendor/popper/popper.min.js"></script>
    <script src="/MiniProject2/Resources/vendor/bootstrap/js/bootstrap.min.js"></script>

  </body>

</html>