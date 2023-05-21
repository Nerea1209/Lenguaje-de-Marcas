<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <!-- Añadir al documento .xml dos productos nuevos. Sus precios serán 100 € y 350 €
respectivamente. Modificar el apartado 5, añadiendo las siguientes modificaciones:
- Los artículos con precio menores o iguales que 100 € aparezcan en color verde, los
artículos con precios >100 € y < 1000 € de color azul y el resto rojo.
- Los productos aparecerán ordenados por el artículo. -->

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
        <xsl:choose>
            <xsl:when test="precio &lt;= 100">
                <tr style="background-color: green">
                    <td>
                        <xsl:value-of select="codigo"></xsl:value-of>
                    </td>
                    <td>
                        <xsl:value-of select="articulo"></xsl:value-of>
                    </td>
                    <td>
                        <xsl:value-of select="cantidad"></xsl:value-of>
                    </td>
                    
                </tr>
            </xsl:when>
            <xsl:when test="precio &gt; 100 and precio &lt; 1000">
                <tr style="background-color: blue">
                    <td>
                        <xsl:value-of select="codigo"></xsl:value-of>
                    </td>
                    <td>
                        <xsl:value-of select="articulo"></xsl:value-of>
                    </td>
                    <td>
                        <xsl:value-of select="cantidad"></xsl:value-of>
                    </td>
                </tr>
            </xsl:when>
            <xsl:otherwise>
                <tr style="background-color: red">
                    <td>
                        <xsl:value-of select="codigo"></xsl:value-of>
                    </td>
                    <td>
                        <xsl:value-of select="articulo"></xsl:value-of>
                    </td>
                    <td>
                        <xsl:value-of select="cantidad"></xsl:value-of>
                    </td>
                </tr>
            </xsl:otherwise>
        </xsl:choose>


    </xsl:template>

</xsl:stylesheet>