<%-- 
    Document   : index
    Created on : May 17, 2025, 7:57:27 PM
    Author     : josepino
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>To-Do List</title>
        <!-- Link donde coloco BootStrap-->

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Link donde coloco CSS-->
        <link rel="stylesheet" href="../js/styles.css" />


    </head>
    
    <body>
        <div class="container my-5">
            <h1 class="text-center mb-4">Mi Lista de Tareas</h1>

            <!-- Formulario para agregar tareas -->
            <form id="task-form" class="input-group mb-3">
                <input type="text" id="task-input" class="form-control" placeholder="Escribe una nueva tarea" required />
                <button type="submit" class="btn btn-primary">Agregar</button>
            </form>

            <!-- Lista de tareas -->
            <ul id="task-list" class="list-group">
                <!-- Aquí se agregarán las tareas dinámicamente -->
            </ul>
        </div>

        <script>
            // Lógica básica para agregar tareas (opcional)
            document.getElementById('task-form').addEventListener('submit', function (e) {
                e.preventDefault();
                const input = document.getElementById('task-input');
                const taskText = input.value.trim();
                if (taskText) {
                    const li = document.createElement('li');
                    li.className = 'list-group-item d-flex justify-content-between align-items-center';
                    li.innerHTML = `
            ${taskText}
                <button class="btn btn-danger btn-sm">Eliminar</button>
              `;
                    document.getElementById('task-list').appendChild(li);
                    input.value = '';

                    li.querySelector('button').addEventListener('click', () => li.remove());
                }
            });
        </script>
    </body>
</html>
