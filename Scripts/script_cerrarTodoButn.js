// Función para cerrar todos los desplegables
function cerrarTodos() {
    // Selecciona todos los elementos desplegables
    const contenidos = document.querySelectorAll('.videojuego-content');
    
    // Recorre todos y los cierra (ocultándolos)
    contenidos.forEach((contenido) => {
        contenido.style.display = 'none';
    });
}

// Función para alternar contenido desplegable (si ya existe, ignórala)
function toggleContent(id) {
    const content = document.getElementById(id);
    content.style.display = (content.style.display === 'none' || content.style.display === '') ? 'block' : 'none';
}