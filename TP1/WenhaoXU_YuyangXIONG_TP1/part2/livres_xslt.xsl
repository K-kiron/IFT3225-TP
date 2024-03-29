<?xml version="1.0" encoding="UTF-8"?>

<!--Wenhao XU_20150702, Yuyang XIONG_20151236-->

<?xml-stylesheet type="text/xsl" href="bibliotheque.xml"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output
        omit-xml-declaration="no" method="xml"
        doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
        doctype-system=
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
        indent="yes" encoding="UTF-8"/>
    
    <xsl:param name="intervallePrix" select="//livre[34>prix and prix>22]"/>
    <xsl:param name="motCle" select="''"/>
    <xsl:param name="whitespace" select="' '"/>
    
    <xsl:template match="/bibliotheque">
        <html>
            <head>
                <h2>Tableau de livres</h2>
            </head>
            <body>
                <table border="1">
                    <tr bgcolor="pink">
                        <th>Titre</th>
                        <th>Auteur</th>
                        <th>Annee</th>
                        <th>Prix</th>
                        <th>Couverture</th>
                        <th>Commentaire</th>
                    </tr>
                    
                    <xsl:for-each select="$intervallePrix">
                        <xsl:sort order="ascending" select="prix"/>
                        <xsl:if test="contains(titre, $motCle)">
                            <xsl:variable name="author" select="@auteurs"/>
                            <xsl:variable name="devise" select="./prix/@devise"/>
                            <tr>
                                <td><xsl:value-of select="titre"/></td>
                                <td><xsl:value-of select="//auteur[@ident=$author]/nom"/></td>
                                <td><xsl:value-of select="annee"/></td>
                                <td><xsl:value-of select="prix"/>
                                    <xsl:value-of select="$whitespace"/>
                                    <xsl:value-of select="$devise"/>
                                </td>
                                <td>
                                    <img height="100" width="100">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="couverture"/>
                                        </xsl:attribute>
                                    </img>
                                </td>
                                <td><xsl:value-of select="commentaire"/></td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>