<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<!-- Extraiga en párrafos los artículos de la tienda -->
     
     <xsl:template match="/">
        <html>
            <head>
                <title>Transformación 1</title>
            </head>
            <body>
                <xsl:apply-templates select="tienda/producto" />
            </body>
        </html>
     </xsl:template>
     
     <xsl:template match="producto">
        <p><xsl:value-of select="articulo"></xsl:value-of></p>
     </xsl:template>
     

</xsl:stylesheet>