<%-- 
    Document   : Proveedor
    Created on : 16/09/2024, 12:49:42 p. m.
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Proveedores - Minimarket</title>
    
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
        <h1>Lista de Proveedores</h1>
        
        <!-- Formulario para agregar un nuevo proveedor -->
        <form id="provider-form" onsubmit="addProvider(event)">
            <input type="text" id="provider-company" placeholder="Empresa" required>
            <input type="text" id="provider-name" placeholder="Nombre" required>
            <input type="tel" id="provider-phone" placeholder="Teléfono" required>
            <button type="submit">Agregar Proveedor</button>
        </form>

        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Empresa</th>
                    <th>Nombre</th>
                    <th>Teléfono</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            
        </table>
    </div>

    <script>
        let providerId = 3; // ID inicial para nuevos proveedores

        function toggleSidebar() {
            const sidebar = document.getElementById('sidebar');
            const mainContent = document.getElementById('main-content');
            sidebar.classList.toggle('hidden');
            mainContent.classList.toggle('shift');
        }

        function addProvider(event) {
            event.preventDefault(); // Evitar el envío del formulario

            // Obtener los valores del formulario
            const company = document.getElementById('provider-company').value;
            const name = document.getElementById('provider-name').value;
            const phone = document.getElementById('provider-phone').value;

            // Crear una nueva fila en la tabla
            const tableBody = document.getElementById('provider-table-body');
            const newRow = tableBody.insertRow();

            // Insertar celdas en la nueva fila
            newRow.insertCell(0).innerText = providerId++;
            newRow.insertCell(1).innerText = company;
            newRow.insertCell(2).innerText = name;
            newRow.insertCell(3).innerText = phone;

            // Crear botones de acción
            const actionsCell = newRow.insertCell(4);
            actionsCell.innerHTML = `
                <button onclick="editProvider(${providerId - 1})">Editar</button>
                <button onclick="deleteProvider(${providerId - 1})">Eliminar</button>
            `;

            // Limpiar el formulario
            document.getElementById('provider-form').reset();
        }

        function editProvider(providerId) {
            alert('Editar proveedor con ID: ' + providerId);
            // Aquí puedes agregar la lógica para editar el proveedor
        }

        function deleteProvider(providerId) {
            alert('Eliminar proveedor con ID: ' + providerId);
            // Aquí puedes agregar la lógica para eliminar el proveedor
        }
    </script>
</body>
</html>

