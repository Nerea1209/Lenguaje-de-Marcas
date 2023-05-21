<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<!-- Mostrar horario en orden, sin poner la prioridad a aquellas tareas que no la
tengan: -->
     
     <xsl:template match="/">
        <html>
            <head>
                <title>Transformación 3</title>
            </head>
            <body>
                <xsl:for-each select="horario/dia">
               <xsl:sort select="numdia" order="ascending"></xsl:sort>
               <xsl:choose>
                  <xsl:when test="numdia = '1'"> Lunes </xsl:when>
                  <xsl:when test="numdia = '2'"> Martes </xsl:when>
                  <xsl:when test="numdia = '3'"> Miércoles </xsl:when>
                  <xsl:when test="numdia = '4'"> Jueves </xsl:when>
                  <xsl:otherwise> Viernes </xsl:otherwise>
               </xsl:choose>
               <ul>
                  <xsl:for-each select="tarea">
                  <xsl:sort select="hora-fin" order="ascending"></xsl:sort>
                     <li>
                        <strong>
                           <xsl:value-of select="nombre"></xsl:value-of>
                        </strong>
                        <xsl:if test="@prioridad != ''">- Prioridad: <xsl:value-of select="@prioridad"></xsl:value-of> </xsl:if><br/>
                        De <xsl:value-of select="hora-ini"></xsl:value-of> a <xsl:value-of select="hora-fin"></xsl:value-of></li>
                  </xsl:for-each>
               </ul>
            </xsl:for-each>
            </body>
        </html>
     </xsl:template>
     

</xsl:stylesheet>