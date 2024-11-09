<%-- 
    Document   : Cliente
    Created on : 13/09/2024, 4:26:21 p. m.
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
        <h1>Lista de Clientes</h1>
        
        <!-- Formulario para agregar un nuevo cliente -->
        <form id="client-form" action="svCliente" method="POST">
            <input type="text" id="client-document" placeholder="Documento" name="doc">
            <input type="text" id="client-name" placeholder="Nombre" name="nom">
            <input type="email" id="client-email" placeholder="Correo" name="correo">
            <input type="tel" id="client-phone" placeholder="Teléfono" name="tel">
            <input type="text" id="client-address" placeholder="Dirección" name="dir">
            <button type="submit" id="agregarCliente">Agregar Cliente</button>
        </form>

        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Correo</th>
                    <th>Teléfono</th>
                    <th>Dirección</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            
        </table>
    </div>

    <script>
        let clientId = 3; // ID inicial para nuevos clientes

        function toggleSidebar() {
            const sidebar = document.getElementById('sidebar');
            const mainContent = document.getElementById('main-content');
            sidebar.classList.toggle('hidden');
            mainContent.classList.toggle('shift');
        }

        function addClient(event) {
            event.preventDefault(); // Evitar el envío del formulario

            // Obtener los valores del formulario
            const name = document.getElementById('client-name').value;
            const email = document.getElementById('client-email').value;
            const phone = document.getElementById('client-phone').value;
            const address = document.getElementById('client-address').value;

            // Crear una nueva fila en la tabla
            const tableBody = document.getElementById('client-table-body');
            const newRow = tableBody.insertRow();

            // Insertar celdas en la nueva fila
            newRow.insertCell(0).innerText = clientId++;
            newRow.insertCell(1).innerText = name;
            newRow.insertCell(2).innerText = email;
            newRow.insertCell(3).innerText = phone;
            newRow.insertCell(4).innerText = address;

            // Crear botones de acción
            const actionsCell = newRow.insertCell(5);
            actionsCell.innerHTML = `
                <button onclick="editClient(${clientId - 1})">Editar</button>
                <button onclick="deleteClient(${clientId - 1})">Eliminar</button>
            `;

            // Limpiar el formulario
            document.getElementById('client-form').reset();
        }

        function editClient(clientId) {
            alert('Editar cliente con ID: ' + clientId);
            // Aquí puedes agregar la lógica para editar el cliente
        }

        function deleteClient(clientId) {
            alert('Eliminar cliente con ID: ' + clientId);
            // Aquí puedes agregar la lógica para eliminar el cliente
        }
    </script>
    
</body>
</html>
