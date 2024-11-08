<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <!-- Definir el método de salida como HTML y habilitar la indentación -->
    <xsl:output method="html" indent="yes" />
    
    <!-- Plantilla que coincide con la raíz del XML -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Lista de Videojuegos</title>
                <!-- Enlace al archivo CSS externo para el estilo de la página -->
                <link rel="stylesheet" type="text/css" href="../Estilos/styles.css" />
            </head>
            <body>
                <!-- Cabecera de la página con el título principal -->
                <header>
                    <h1>Mejores historias en Videojuegos</h1>
                </header>
                <main>
                    <!-- Lista ordenada para mostrar los videojuegos -->
                    <ol>
                        <!-- Itera sobre cada videojuego en el XML -->
                        <xsl:for-each select="videojuegos/videojuego">
                            <!-- Cada videojuego se presenta como un elemento de lista -->
                            <li class="videojuego-container">
                                <!-- Botón que despliega la sinopsis y detalles del videojuego -->
                                <button class="videojuego-title" onclick="toggleContent('videojuego-{position()}')">
                                    <!-- Muestra el título del videojuego -->
                                    <xsl:value-of select="titulo" />
                                </button>
                                
                                <!-- Contenedor de contenido, inicialmente oculto -->
                                <div class="videojuego-content" id="videojuego-{position()}">
                                    <div class="videojuego-info">
                                        <!-- Imagen del videojuego, usando la ruta proporcionada en el XML -->
                                        <img src="{img}" alt="{titulo}" />
                                        <!-- Sinopsis del videojuego -->
                                        <p><xsl:value-of select="sinopsis" /></p>
                                    </div>
                                </div>
                            </li>
                        </xsl:for-each>
                    </ol>
                    <!-- Botón para cerrar todos los contenidos desplegados -->
                    <button class="closeAllBtn" onclick="cerrarTodos()">Cerrar todos</button>
                </main>
                <!-- Pie de página con derechos reservados y contacto -->
                <footer>
                    <p>2024 Lista de Videojuegos. Todos los derechos reservados.</p>
                    <p>Contacto: <a href="mailto:jomech23@bemen3.cat">jomech23@bemen3.cat</a></p>
                </footer>

                <!-- Archivos JavaScript necesarios para el funcionamiento de la página -->
                <script src="../Scripts/script_cerrarTodoButn.js"></script> <!-- Script que maneja el botón de cerrar todos los desplegables -->
                <script src="../Scripts/script_desplegable.js"></script> <!-- Script que maneja la cción de desplegar el contenido -->
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
