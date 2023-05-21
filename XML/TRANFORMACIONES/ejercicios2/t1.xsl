<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<!-- Mostrar una tabla con las siguientes columnas ordenadas por el título del libro:
a) Título del libro, en color rojo si el precio es mayor de 100, añadiéndole el texto "(Caro)" a
continuación.
b) Autores del libro mostrando primero el nombre y luego el apellido. Si hay más de un
autor se muestran todos en la misma celda. Si no hay autor se deja en blanco.
c) Editores del libro mostrando el nombre, el apellido y la afiliación. Si hay más de un editor
se muestran todos en la misma celda. Si no hay editor se deja en blanco.-->
    <xsl:template match="/">
       <html>
            <head>
                <title>Transformación 1</title>
            </head>
            <body>
                <table border = "1">
                    <tr>
                        <th>Título del libro</th>
                        <th>Autores</th>
                        <th>Editores</th>
                    </tr>
                    <xsl:apply-templates select="bib/libro">
                        <xsl:sort select="titulo" data-type="text" order="ascending"/>
                    </xsl:apply-templates>
                </table>
            </body>
       </html>
    </xsl:template>
    
    <xsl:template match="libro">
       <tr>
            <td>
                <xsl:choose>
                   <xsl:when test="precio &gt; 100">
                      <span style = "color: red"> <xsl:value-of select="titulo"> Caro </xsl:value-of> </span>
                   </xsl:when>
                   <xsl:otherwise>
                   
                      <xsl:value-of select="titulo"></xsl:value-of>
                      
                   </xsl:otherwise>
                   
                </xsl:choose>
            </td>
                
            <td>
                <xsl:for-each select="autor">
                    <xsl:value-of select="concat(nombre, ' ', apellido, ' ')"/> 
                </xsl:for-each>
            </td>

            <td>
                <xsl:for-each select="editor">
                    <xsl:value-of select="concat(nombre, ' ', apellido, ' ', afiliacion, ' ')"/> 
                </xsl:for-each>
            </td>
       </tr>
    </xsl:template>

 
    
    

</xsl:stylesheet>