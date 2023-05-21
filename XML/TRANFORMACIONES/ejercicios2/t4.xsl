<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<!-- . Mostrar una lista enumerada con todos los títulos de libros cuyo precio sea menor de 100-->
    <xsl:template match="/">
        <html>
            <head>
                <title>Transformación 4</title>
            </head>
            <body>
                <ol>
                    <xsl:apply-templates select="bib/libro">
                        <xsl:sort select="titulo" order="ascending"></xsl:sort>
                    </xsl:apply-templates>
                </ol>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="libro">
    <xsl:if test="precio &gt; 100"><li><xsl:value-of select="titulo"></xsl:value-of></li></xsl:if>
        
    </xsl:template>
    
</xsl:stylesheet>