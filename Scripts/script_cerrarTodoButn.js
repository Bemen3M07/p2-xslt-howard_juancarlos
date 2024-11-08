// Función para cerrar todos los desplegables
function cerrarTodos() {
    // Selecciona todos los elementos con la clase 'videojuego-content'
    const contenidos = document.querySelectorAll('.videojuego-content');
    
    // Recorre todos y les quita la clase 'show' para ocultarlos
    contenidos.forEach((contenido) => {
        contenido.classList.remove('show');
    });
}