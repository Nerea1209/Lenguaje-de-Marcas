<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<!-- Añadir al documento .xml, a cada producto una imagen de referencia (nombre de
un fichero .gif, .jpg, .png, ..). Este fichero debe estar almacenado en una carpeta “Imágenes”
que estará ubicada en el mismo directorio o carpeta que el fichero XML. Añadir a la
modificación del EJERCICIO 6 una cuarta columna con la imagen añadida. -->
     
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
                        <th>Precio</th>
                        <th>Foto</th>
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
                    <td>
                        <xsl:value-of select="precio"></xsl:value-of>
                    </td>
                    <td>
                        <img src="{foto}" alt="{articulo}"/>
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
                    <td>
                        <xsl:value-of select="precio"></xsl:value-of>
                    </td>
                    <td>
                        <img src="{foto}" alt="{articulo}"/>
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
                    <td>
                        <xsl:value-of select="precio"></xsl:value-of>
                    </td>
                    <td>
                        <img src="{foto}" alt="{articulo}"/>
                    </td>
                </tr>
            </xsl:otherwise>
        </xsl:choose>


    </xsl:template>

</xsl:stylesheet>