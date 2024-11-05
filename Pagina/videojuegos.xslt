<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <html>
            <head>
                <title>Lista de Videojuegos</title>
                <!-- Enlace al archivo CSS externo -->
                <link rel="stylesheet" type="text/css" href="../Estilos/styles.css" />
            </head>
            <body>
                <header>
                    <h1>Lista de Videojuegos</h1>
                </header>
                <main>
                    <ol>
                        <xsl:for-each select="videojuegos/videojuego">
                            <li class="videojuego-container">
                                <button class="videojuego-title" onclick="toggleContent('videojuego-{position()}')">
                                    <xsl:value-of select="titulo" />
                                </button>
                                <div class="videojuego-content" id="videojuego-{position()}">
                                    <div class="videojuego-info">
                                        <img src="{img}" alt="{titulo}" />
                                        <p><xsl:value-of select="sinopsis" /></p>
                                    </div>
                                </div>
                            </li>
                        </xsl:for-each>
                    </ol>
                </main>
                <footer>
                    <!-- Footer opcional -->
                </footer>
                <script src="../Scripts/script_desplegable.js"></script>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
