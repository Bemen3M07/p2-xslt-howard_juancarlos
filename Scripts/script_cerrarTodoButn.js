// Función para cerrar todos los desplegables
function cerrarTodos() {
    
    // Selecciona todos los elementos con la clase 'videojuego-content'
    // Utiliza 'document.querySelectorAll' para obtener una lista de todos los elementos que tengan la clase 'videojuego-content'.
    const contenidos = document.querySelectorAll('.videojuego-content');
    
    // Recorre todos los elementos seleccionados y les quita la clase 'show' para ocultarlos
    // 'forEach' es un método que recorre cada elemento de la lista de 'contenidos'.
    contenidos.forEach((contenido) => {
        
        // Para cada elemento, elimina la clase 'show', lo que hace que se oculte.
        contenido.classList.remove('show');
    });
}