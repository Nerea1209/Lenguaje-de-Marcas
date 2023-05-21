<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<!-- Formatear la lista de artículos para que se presente como una lista no ordenada
(sin numerar), de HTML -->

     <xsl:template match="/">
        <html>
            <head>
                <title>Transformación 2</title>
            </head>
            <body>
                <ul>
                    <xsl:apply-templates select="tienda/producto" />
                </ul>
            </body>
        </html>
     </xsl:template>
     
     <xsl:template match="producto">
        <li><xsl:value-of select="articulo"></xsl:value-of></li>
     </xsl:template>
     

</xsl:stylesheet>