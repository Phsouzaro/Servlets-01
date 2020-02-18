<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${not empty empresa }">
		Empresa ${ empresa } cadastrada com sucesso
	</c:if>
		<h2 class="w3-blue" style="text-shadow:1px 1px 0 #444"> Lista Empresas: </h2><b></b>
	<ul class="w3-ul">
		<c:forEach items="${ empresas }" var="empresa"> 
			<li class="w3-hover-red" style="margin-bottom: 5px">
				${empresa.nome} <fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/> 
				<button class="w3-button w3-circle w3-red" style="float: right;" onclick="window.location.href='/manager/removeEmpresa?id=${empresa.id}'">X</button>
				<button CLass="w3-button w3-teal " style="float: right; margin-right: 5px;" onclick="window.location.href='/manager/mostraEmpresa?id=${empresa.id}'"> Editar</button>
			</li>
		</c:forEach>
	</ul>
	
	<button class="w3-button w3-teal" onclick="window.location.href ='/manager/formNovaEmpresa.jsp'">Cad Empresa</button>
</body>
</html>