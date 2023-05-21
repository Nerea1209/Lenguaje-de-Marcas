<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<!-- . Mostrar una lista con los autores españoles.-->
    <xsl:template match="/">
        <html>
            <head>
                <title>Transformación 5</title>
            </head>
            <body>
                <ul>
                    <xsl:apply-templates select="catalogo/artistas/artista[nacionalidad = 'España']" />
                </ul>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="artista">
    
    <li>
        <xsl:value-of select="nombre"/>
    </li>
    </xsl:template>

</xsl:stylesheet>