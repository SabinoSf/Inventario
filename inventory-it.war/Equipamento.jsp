<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Inventory-IT - Equipamentos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-4">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h2>Gerenciamento de Equipamentos</h2>
        <div>
            <a href="novo-equipamento" class="btn btn-primary">Novo Equipamento</a>
            <a href="laboratorios" class="btn btn-outline-secondary ms-2">Ir para Laboratórios</a>
        </div>
    </div>

    <h3 class="mb-3">Equipamentos Cadastrados</h3>
    <table class="table table-striped table-bordered">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Número de Série</th>
                <th>Tipo</th>
                <th>Laboratório Alocado</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="eqp" items="${equipamentos}">
                <tr>
                    <td>${eqp.id}</td>
                    <td>${eqp.numeroSerie}</td>
                    <td>${eqp.tipo}</td>
                    <td>${eqp.laboratorio.nome}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>