<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Formul�rio - Adiciona tarefa</title>
</head>
	<body>
		<h3>Adicionar tarefas -= WEB-INF/views/tarefa</h3>
			
			<form action="adicionaTarefa" method="post">
				Descri��o:
						<br/>
				<textarea rows="5" cols="100" name="descricao"></textarea>
						<br/>
													
				<form:errors path="tarefa.descricao" cssStyle="color:red"/>
						<br/>
				<input type="submit" value="Adicionar"/>
			</form>
	</body>
</html>
