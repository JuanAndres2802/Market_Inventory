<%-- 
    Document   : InicioSesion
    Created on : 17/09/2024, 2:15:10 p. m.
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio - Minimarket</title>
    
    <link href="estilos.css" rel="stylesheet" type="text/css">
</head>
<body>
    <button class="toggle-btn" onclick="toggleSidebar()">☰</button>

    <div class="sidebar" id="sidebar">
        <h2>Market Inventory</h2>
        <ul>
            <li><a href="Usuario.jsp">Usuarios</a></li>
            <li><a href="Cliente.jsp">Clientes</a></li>
            <li><a href="Producto.jsp">Productos</a></li>
            <li><a href="Proveedor.jsp">Proveedores</a></li>
        </ul>
    </div>

    <div class="main-content" id="main-content">
        <h1>Bienvenido a Market Inventory</h1>
        <p>Gestione sus usuarios, clientes, productos y proveedores de manera sencilla y eficiente.</p>
    </div>

    <script>
        function toggleSidebar() {
            const sidebar = document.getElementById('sidebar');
            const mainContent = document.getElementById('main-content');
            sidebar.classList.toggle('hidden');
            mainContent.classList.toggle('shift');
        }
    </script>
</body>
</html>

