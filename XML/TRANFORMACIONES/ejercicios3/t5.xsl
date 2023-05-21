<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<!-- . El documento HTML deberá mostrar una tabla. La tabla contendrá una fila para
cada producto. Las filas tendrán tres celdas, en la que aparecerá el código, el artículo y la
cantidad. -->
     
     <xsl:template match="/">
        <html>
            <head>
                <title>Transformación 3</title>
            </head>
            <body>
                <table border="1">
                <tr>
                    <th>Código</th>
                    <th>Artículo</th>
                    <th>Cantidad</th>
                </tr>
                    <xsl:apply-templates select="tienda/producto" />
                </table>
            </body>
        </html>
     </xsl:template>
     
     <xsl:template match="producto">
        <tr>
            <td><xsl:value-of select="codigo"></xsl:value-of></td>
            <td><xsl:value-of select="articulo"></xsl:value-of></td>
            <td><xsl:value-of select="cantidad"></xsl:value-of></td>
        </tr>
     </xsl:template>

</xsl:stylesheet>