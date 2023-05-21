<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<!-- Cambiar la hoja de estilo XSLT para que los artículos se presenten en una tabla
con una única columna. -->
     
     <xsl:template match="/">
        <html>
            <head>
                <title>Transformación 3</title>
            </head>
            <body>
                <table border="1">
                    <xsl:apply-templates select="tienda/producto" />
                </table>
            </body>
        </html>
     </xsl:template>
     
     <xsl:template match="producto">
        <tr><td><xsl:value-of select="articulo"></xsl:value-of></td></tr>
     </xsl:template>

</xsl:stylesheet>