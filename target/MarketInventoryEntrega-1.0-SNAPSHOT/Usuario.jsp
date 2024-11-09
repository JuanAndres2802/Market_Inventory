<%-- 
    Document   : Usuario
    Created on : 16/09/2024, 12:50:00 p. m.
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clientes - Minimarket</title>
    
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
        <h1>Lista de Usuarios</h1>
        
        <!-- Formulario para agregar un nuevo cliente -->
        <form id="client-form" onsubmit="addUsuario(event)">
            <input type="text" id="Usuario-name" placeholder="Nombre" required>
            <input type="email" id="Usuario-email" placeholder="Correo" required>
            <input type="tel" id="Usuario-Clave" placeholder="Clave" required>
            <button type="submit">Agregar Usuario</button>
        </form>

        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Correo</th>
                    <th>Clave</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            
        </table>
    </div>

    <script>
        let UsuarioId = 3; // ID inicial para nuevos Usuarios

        function toggleSidebar() {
            const sidebar = document.getElementById('sidebar');
            const mainContent = document.getElementById('main-content');
            sidebar.classList.toggle('hidden');
            mainContent.classList.toggle('shift');
        }

        function addUsuario(event) {
            event.preventDefault(); // Evitar el envío del formulario

            // Obtener los valores del formulario
            const name = document.getElementById('Usuario-name').value;
            const email = document.getElementById('Usuario-email').value;
            const phone = document.getElementById('Usuario-clave').value;

            // Crear una nueva fila en la tabla
            const tableBody = document.getElementById('Usuario-table-body');
            const newRow = tableBody.insertRow();

            // Insertar celdas en la nueva fila
            newRow.insertCell(0).innerText = UsuarioId++;
            newRow.insertCell(1).innerText = name;
            newRow.insertCell(2).innerText = email;
            newRow.insertCell(4).innerText = Password;

            // Crear botones de acción
            const actionsCell = newRow.insertCell(5);
            actionsCell.innerHTML = `
                <button onclick="editUsuario(${UsuarioId - 1})">Editar</button>
                <button onclick="deleteUsuario(${UsuarioId - 1})">Eliminar</button>
            `;

            // Limpiar el formulario
            document.getElementById('Usuario-form').reset();
        }

        function editUsuario(UsuarioId) {
            alert('Editar Usuario con ID: ' + UsuarioId);
            // Aquí puedes agregar la lógica para editar el Usuario
        }

        function deleteUsuario(UsuarioId) {
            alert('Eliminar Usuario con ID: ' + UsuarioId);
            // Aquí puedes agregar la lógica para eliminar el Usuario
        }
    </script>
</body>
</html>
