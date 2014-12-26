<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum" %>

<html>
<head> <%-- necessário para o jquery: datepicker --%>
		<link href="js/jquery-ui.css" rel="stylesheet">
		<link href="js/jquery.css" rel="stylesheet">
		<script src="js/external/jquery/jquery.js"></script>
		<script src="js/jquery-ui.js"></script>
</head>
<body>
	<h3>Alterar tarefa fgm - ${tarefa.id}</h3>
	<form action="alteraTarefa" method="post">
		<input type="hidden" name="id" value="${tarefa.id}" />

		Descrição:<br />
		<textarea name="descricao" cols="100" rows="5">${tarefa.descricao}
		</textarea>
		<br /> 

		Finalizado? <input type="checkbox" name="finalizado"
		value="true" ${tarefa.finalizado? 'checked' : '' } /> <br /> 

 		Data de finalização: 
		<fmt:formatDate value='${tarefa.dataFinalizacao.time}' pattern='dd/MM/yyyy' var="dataFormatada" />
		<caelum:campoData id="dataFinalizacao" val="${dataFormatada}"/>
 		
		<br /> 
		<input type="submit" value="Alterar" />
	</form>
</body>
</html>