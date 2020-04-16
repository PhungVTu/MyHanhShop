<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>

<jsp:include flush="true" page="header.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
	
	#orderSuccess{
		background-color: gray;
		width:100%;
		height: auto;
	}
	h2{ 
		padding-top:3em;
		color: blue;
		text-align:  center;
	}
</style>
<div id="orderSuccess"><h2 >Order Success</h2></div>
<jsp:include flush="true" page="footer.jsp"></jsp:include>