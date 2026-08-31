<%-- --- src/main/webapp/laboratorio.jsp --- --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Inventory-IT - Laboratórios</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-4">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h2>Gerenciamento de Laboratórios</h2>
        <div>
            <a href="novo-laboratoio.jsp" class="btn btn-primary">Novo Laboratório</a>
            <a href="equipamentos" class="btn btn-outline-secondary ms-2">Ir para Equipamentos</a>
        </div>
    </div>

    <h3 class="mb-3">Laboratórios Cadastrados</h3>
    <table class="table table-striped table-bordered">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Bloco</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="lab" items="${laboratorios}">
                <tr>
                    <td>${lab.id}</td>
                    <td>${lab.nome}</td>
                    <td>${lab.bloco}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>