<%@ page language="java" contentType="text/plain; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
[
<c:forEach var="category" items="${categoryList}" varStatus="i">
{ "category_no" : ${category.category_no}, 
"category_title" : "${category.category_title}",
"category_image" : "${category.category_image}" }
<c:if test="${!i.last}">,</c:if>
</c:forEach>
]