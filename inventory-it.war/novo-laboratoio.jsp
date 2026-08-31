<%-- --- src/main/webapp/novo-laboratoio.jsp --- --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Inventory-IT - Novo Laboratório</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-4">
    <h2 class="mb-4">Cadastrar Novo Laboratório</h2>
    
    <form action="laboratorios" method="POST" class="card p-4 mb-4 shadow-sm">
        <div class="mb-3">
            <label for="nome" class="form-label">Nome do Laboratório</label>
            <input type="text" class="form-control" id="nome" name="nome" required>
        </div>
        <div class="mb-3">
            <label for="bloco" class="form-label">Bloco</label>
            <input type="text" class="form-control" id="bloco" name="bloco" required>
        </div>
        <button type="submit" class="btn btn-primary">Salvar Laboratório</button>
        <a href="laboratorios" class="btn btn-secondary ms-2">Voltar para Listagem</a>
    </form>
</body>
</html>