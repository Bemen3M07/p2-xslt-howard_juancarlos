// Definimos la función llamada toggleContent que recibe un parámetro 'id'.
// Este parámetro 'id' es el identificador del elemento que se desea mostrar u ocultar.
function toggleContent(id) {

    // Usamos 'getElementById' para obtener el elemento del DOM con el 'id' proporcionado.
    // Este 'id' se corresponde con el atributo 'id' de un elemento HTML que queremos manipular.
    var content = document.getElementById(id);

    // Usamos 'classList.toggle' para añadir o quitar la clase 'show' del elemento.
    // Si el elemento no tiene la clase 'show', se la añade, y si la tiene, se la quita.
    content.classList.toggle("show");
}
