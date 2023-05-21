<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<!-- Mostrar una tabla con las siguientes columnas:
a) Precio del libro, ordenando los resultados por este campo (Nota: se ordenan como si
fueran cadenas y no números).
b) Título del libro. Se mostrará el fondo de la celda en color rojo si el precio es mayor de
100.
c) Año de publicación. Se mostrará el texto en cursiva.
-->
     <xsl:template match="/">
        <html>
            <head>
                <title>Transformación 2</title>
            </head>
            <body>
                <table border = "1">
                    <tr>
                        <th>Precio del libro</th>
                        <th>Título</th>
                        <th>Año de publicación</th>
                    </tr>
                    <tr>
                        <xsl:apply-templates select="bib/libro">
                            <xsl:sort select="precio" order="ascending"></xsl:sort>
                        </xsl:apply-templates>
                    </tr>
                </table>
            </body>
        </html>
     </xsl:template>

     <xsl:template match="libro">
        <tr>
            <td><xsl:value-of select="precio"/></td>
            <td>
                <xsl:choose>
                   <xsl:when test="precio &gt; 100">
                      <p style = "background-color: red"><xsl:value-of select="titulo"></xsl:value-of></p>
                   </xsl:when>
                   <xsl:otherwise>
                      <xsl:value-of select="titulo"/>
                   </xsl:otherwise>
                </xsl:choose>
            </td>
            <td><em><xsl:value-of select="@año"/></em></td>
        </tr>
     </xsl:template>
     
     
</xsl:stylesheet>