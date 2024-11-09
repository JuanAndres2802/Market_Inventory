<%-- 
    Document   : Producto
    Created on : 16/09/2024, 12:49:50 p. m.
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Productos - Minimarket</title>
    
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
        <h1>Lista de Productos</h1>
        
        <!-- Formulario para agregar un nuevo producto -->
        <form id="product-form" onsubmit="addProduct(event)">
            <input type="text" id="product-name" placeholder="Nombre" required>
            <input type="number" id="product-price" placeholder="Precio" required>
            <input type="date" id="product-expiry" placeholder="Fecha de Vencimiento" required>
            <input type="number" id="product-quantity" placeholder="Cantidad" required>
            <button type="submit">Agregar Producto</button>
        </form>

        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Precio</th>
                    <th>Fecha de Vencimiento</th>
                    <th>Cantidad</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            
        </table>
    </div>

    <script>
        let productId = 3; // ID inicial para nuevos productos

        function toggleSidebar() {
            const sidebar = document.getElementById('sidebar');
            const mainContent = document.getElementById('main-content');
            sidebar.classList.toggle('hidden');
            mainContent.classList.toggle('shift');
        }

        function addProduct(event) {
            event.preventDefault(); // Evitar el envío del formulario

            // Obtener los valores del formulario
            const name = document.getElementById('product-name').value;
            const price = document.getElementById('product-price').value;
            const expiry = document.getElementById('product-expiry').value;
            const quantity = document.getElementById('product-quantity').value;

            // Crear una nueva fila en la tabla
            const tableBody = document.getElementById('product-table-body');
            const newRow = tableBody.insertRow();

            // Insertar celdas en la nueva fila
            newRow.insertCell(0).innerText = productId++;
            newRow.insertCell(1).innerText = name;
            newRow.insertCell(2).innerText = price;
            newRow.insertCell(3).innerText = expiry;
            newRow.insertCell(4).innerText = quantity;

            // Crear botones de acción
            const actionsCell = newRow.insertCell(5);
            actionsCell.innerHTML = `
                <button onclick="editProduct(${productId - 1})">Editar</button>
                <button onclick="deleteProduct(${productId - 1})">Eliminar</button>
            `;

            // Limpiar el formulario
            document.getElementById('product-form').reset();
        }

        function editProduct(productId) {
            alert('Editar producto con ID: ' + productId);
            // Aquí puedes agregar la lógica para editar el producto
        }

        function deleteProduct(productId) {
            alert('Eliminar producto con ID: ' + productId);
            // Aquí puedes agregar la lógica para eliminar el producto
        }
    </script>
</body>
</html>
