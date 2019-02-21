<%@ page language="java" contentType="text/plain; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
[
<c:forEach var="board" items="${boardList}" varStatus="i">
{ 
"board_no" : ${board.board_no}, 
"category_1" : "${board.board_category_1}",
"category_2" : "${board.board_category_2}",
"board_title" : "${board.board_title}",
"board_writer" : "${board.board_writer}",
"board_tags" : "${board.board_tags}",
"board_content" : "${board.board_content}",
"board_like_cnt" : "${board.board_like_cnt}",
"board_wdate" : "${board.board_wdate}",
"board_scrap_cnt" : "${board.board_scrap_cnt}"
}
<c:if test="${!i.last}">,</c:if>
</c:forEach>
]