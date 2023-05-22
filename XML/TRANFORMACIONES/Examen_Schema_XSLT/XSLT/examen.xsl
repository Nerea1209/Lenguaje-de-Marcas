<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
       <html>
            <head>
                <title>Transformación</title>
            </head>
            <body>
                <h1>Tienda <xsl:value-of select="discos/@tienda"></xsl:value-of></h1>
                <h2>Clasificación de los Discos</h2>
                <h3>Discos baratos (menos de 15€)</h3>
                <ul>
                    <xsl:for-each select="discos/disco">
                    <xsl:sort select="titulo" order="ascending"></xsl:sort>
                        <xsl:if test="@precio &lt; 15">
                            <li>
                                <a>
                                    <xsl:attribute name="href">
                                        #<xsl:value-of select="interprete/@grupo"></xsl:value-of>
                                    </xsl:attribute>
                                    <xsl:value-of select="titulo"></xsl:value-of>
                                </a>
                                (<xsl:value-of select="@precio"></xsl:value-of> €)
                            </li>
                        </xsl:if>
                    </xsl:for-each>
                </ul>
                <h3>Discos caros (de 15€ ó más)</h3>
                <ul>
                    <xsl:for-each select="discos/disco">
                    <xsl:sort select="titulo" order="ascending"></xsl:sort>
                        <xsl:if test="@precio &gt;= 15">
                            <li>
                                <a>
                                    <xsl:attribute name="href">
                                        #<xsl:value-of select="interprete/@grupo"></xsl:value-of>
                                    </xsl:attribute>
                                    <xsl:value-of select="titulo"></xsl:value-of>
                                </a>
                                (<xsl:value-of select="@precio"></xsl:value-of> €)
                            </li>
                        </xsl:if>
                    </xsl:for-each>
                </ul>
                <h2>Grupos de los Discos</h2>
                <ol>
                    <xsl:for-each select="discos/grupo">
                    <xsl:sort select="nombre" order="descending"></xsl:sort>
                        <li>
                            <span>
                                <xsl:attribute name="id">
                                    <xsl:value-of select="@nom"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:value-of select="nombre"></xsl:value-of>
                            </span>
                            <xsl:if test="nacionalidad != ''">
                                (<xsl:value-of select="nacionalidad" />)
                            </xsl:if>
                            <h4>Miembros</h4>
                            <ul>
                                <xsl:for-each select="miembro">
                                <!-- <xsl:sort select="." order="descending"></xsl:sort> -->
                                    <li>
                                        <xsl:value-of select="."></xsl:value-of>
                                    </li> 
                                </xsl:for-each>
                            </ul>
                            <xsl:choose>
                            <xsl:when test="web != '' and email != ''">
                                <h4>Contacto</h4>
                                <blockquote>
                                    <strong>Web: </strong>
                                        <a>
                                            <xsl:attribute name="href">
                                                <xsl:value-of select="web"></xsl:value-of>
                                            </xsl:attribute>
                                            <xsl:value-of select="web"></xsl:value-of>
                                        </a>
                                    <br/>
                                    <strong>Email: </strong>
                                        <xsl:value-of select="email"></xsl:value-of>
                                </blockquote>
                            </xsl:when>
                            <xsl:when test="calle != '' and localidad != ''">
                                <h4>Contacto</h4>
                                <blockquote>
                                    <strong>Calle: </strong>
                                        <xsl:value-of select="calle"></xsl:value-of>
                                    <br/>
                                    <strong>Localidad: </strong>
                                        <xsl:value-of select="localidad"></xsl:value-of>
                                </blockquote>
                            </xsl:when>
                            <xsl:otherwise>
                                <h4>Sin contacto</h4>
                            </xsl:otherwise>
                            </xsl:choose>
                        </li>
                    </xsl:for-each>
                </ol>
            </body>
       </html>
    </xsl:template>
    
</xsl:stylesheet>
