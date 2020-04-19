<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html>
<html lang="ko">

  <head>
 
	<script>
	function goWriteForm() {
		/* location.href = "/Mission-Web/jsp/Board/writeForm.jsp"; */
		location.href = "/MiniProject2/writeForm.do";
	}
	
	function doAction(boardNo) {	
		location.href = "/MiniProject2/detail.do?no=" + boardNo;
		
	}
	
	 
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
  	<jsp:include page="../include/topMenu.jsp" />
    <div class="container">

      <div class="bg-faded p-4 my-4">
        <hr class="divider">
        <h2 class="text-center text-lg text-uppercase my-0">자유
          <strong>게시판</strong>
        </h2>
        <hr class="divider">
        <div align="center">
		<br/>
		
		

		<table border="1" style="width:100%;">
			<tr>
				<th width="7%">번호</th>
				<th>제목</th>
				<th width="16%">글쓴이</th>
				<th width="20%">등록일</th>
			</tr>

		<c:if test="${ count gt 0 }">
			<c:forEach items="${ list }" var="board" varStatus="loop">
				<tr>	
					<td>${ board.no }</td>
					<td>
						<a href="javascript:doAction('${board.no }')">
							<c:out value="${ board.title }" />
						</a>
					</td>
					<td>${ board.writer }</td>
					<td>${ board.regDate }</td>
				</tr>
			</c:forEach>
		</c:if>
		<c:if test="${ count eq 0 }">
			<tr>
				<td colspan="6" align="center">게시글이 없습니다.</td>
			</tr>
		</c:if>			
		</table>
		<c:if test="${startPage gt pageBlock}">
			<a href="/MiniProject2/freeBoardList.do?pageNum=${startPage-pageBlock}">[이전]</a>
		</c:if>
		<c:forEach begin="${ startPage }" end="${ endPage }" var="i">
			<c:if test="${i eq currentPage }">
				[${i}]
			</c:if>
			<c:if test="${i ne currentPage }">
				<a href="/MiniProject2/freeBoardList.do?pageNum=${i}">[${i}]</a>
			</c:if>
		</c:forEach>
		<c:if test="${ endPage lt pageCount }">
		<a href="/MiniProject2/freeBoardList.do?pageNum=${startPage+pageBlock}">[다음]</a>
		</c:if>


		<br/><br/>		
		
		<c:if test="${ userVO.id == null }">
			글 등록은 로그인 후에 가능합니다. 
		</c:if>

		<c:if test="${ userVO.id != null }">
			<input type="button" value="새글등록" onclick="goWriteForm()" />	
		</c:if>	 
		
				
	</div>
      </div>

    </div>
    <!-- /.container -->

    <footer class="bg-faded text-center py-5">
      <div class="container">
        <p class="m-0">Copyright &copy; Your Website 2017</p>
      </div>
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="/MiniProject2/Resources/vendor/jquery/jquery.min.js"></script>
    <script src="/MiniProject2/Resources/vendor/popper/popper.min.js"></script>
    <script src="/MiniProject2/Resources/vendor/bootstrap/js/bootstrap.min.js"></script>

  </body>

</html>