<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<!-- Mostrar una lista enumerada con todos los autores ordenados por apellidos.-->
    <xsl:template match="/">
        <html>
            <head>
                <title>Transformación 3</title>
            </head>
            <body>
                <ol>
                    <xsl:apply-templates select="bib/libro/autor">
                        <xsl:sort select="apellido" order="ascending"></xsl:sort>
                    </xsl:apply-templates>
                </ol>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="autor">
        <li>
            <xsl:value-of select="concat(nombre, ' ', apellido, ' ')"></xsl:value-of>
        </li>
    </xsl:template>
    
</xsl:stylesheet>