<%-- --- src/main/webapp/novo-equipamento.jsp --- --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Inventory-IT - Novo Equipamento</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-4">
    <h2 class="mb-4">Cadastrar Novo Equipamento</h2>
    
    <form action="equipamentos" method="POST" class="card p-4 mb-4 shadow-sm">
        <div class="mb-3">
            <label for="numeroSerie" class="form-label">Número de Série</label>
            <input type="text" class="form-control" id="numeroSerie" name="numeroSerie" required>
        </div>
        <div class="mb-3">
            <label for="tipo" class="form-label">Tipo de Equipamento</label>
            <input type="text" class="form-control" id="tipo" name="tipo" required>
        </div>
        <div class="mb-3">
            <label for="laboratorioId" class="form-label">Laboratório</label>
            <select class="form-select" id="laboratorioId" name="laboratorioId" required>
                <option value="">Selecione um laboratório...</option>
                <c:forEach var="l" items="${laboratorios}">
                    <option value="${l.id}">${l.nome} (${l.bloco})</option>
                </c:forEach>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Salvar Equipamento</button>
        <a href="equipamentos" class="btn btn-secondary ms-2">Voltar</a>
    </form>
</body>
</html>