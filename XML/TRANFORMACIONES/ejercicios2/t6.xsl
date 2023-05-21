<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<!-- Mostrar una tabla con el nombre del disco en verde si el año es posterior al 2000, y en rojo
si el año es anterior al 2000.-->
     
     <xsl:template match="/">
        <html>
            <head>
                <title>Transformación 6</title>
            </head>
            <body>
                <table border = "1">
                    <tr><th>Nombre del disco</th></tr>
                    <xsl:apply-templates select="catalogo/cds/cd" />
                </table>
            </body>
        </html>
     </xsl:template>
     
     <xsl:template match="cd">
        <xsl:choose>
           <xsl:when test="año &gt; 2000">
              <tr><td><p style="color: green"><xsl:value-of select="titulo"></xsl:value-of></p></td></tr>
           </xsl:when>
           <xsl:when test="año &lt; 2000">
              <tr><td><p style="color: red"><xsl:value-of select="titulo"></xsl:value-of></p></td></tr>
           </xsl:when>
           <xsl:otherwise>
              <tr><td><xsl:value-of select="titulo"></xsl:value-of></td></tr>
           </xsl:otherwise>
        </xsl:choose>
        
     </xsl:template>
     

</xsl:stylesheet>