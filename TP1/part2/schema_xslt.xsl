<?xml version="1.0" encoding="UTF-8"?>
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
    <xsl:template match="/">
        <html>
            <head>
                <title>Bibliotheque</title>
            </head>
            <body>
                <xsl:apply-templates select="bibliotheque"/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="bibliotheque">
        <h1>Bibliotheque</h1>
        <br/>
        
        <h3>Tableau de livres</h3>
        <table border="1">
            <tr style="background: #9acd32">
                <th>Titre</th>
                <th>Annee</th>
                <th>Prix</th>
            </tr>
            <xsl:apply-templates select="livres"/>
        </table>
        <br/>
        
        <h3>Tableau de auteurs</h3>
        <table border="1">
            <tr style="background: #9acd32">
                <th>Nom</th>
                <th>Prenom</th>
                <th>Pays</th>
                <th>Commentaire</th>
                <th>Photo</th>
            </tr>
            <xsl:apply-templates select="auteurs"/>
        </table>
    </xsl:template>
    
    <xsl:template match="livres">
        <xsl:apply-templates select="livre"/>
    </xsl:template>
    
    <xsl:template match="livre">
        <tr>
            <xsl:apply-templates select="titre"/>
            <xsl:apply-templates select="annee"/>
            <xsl:apply-templates select="prix"/>
        </tr>
    </xsl:template>
    
    <xsl:template match="titre">
        <td>
            <xsl:value-of select="text()"/>
        </td>
    </xsl:template>
    <xsl:template match="annee">
        <td>
            <xsl:value-of select="text()"/>
        </td>
    </xsl:template>
    <xsl:template match="prix">
        <td>
            <xsl:value-of select="text()"/>
        </td>
    </xsl:template>
    
    
    <xsl:template match="auteurs">
        <xsl:apply-templates select="auteur"/>
    </xsl:template>
    
    <xsl:template match="auteur">
        <tr>
            <xsl:apply-templates select="nom"/>
            <xsl:apply-templates select="prenom"/>
            <xsl:apply-templates select="pays"/>
            <xsl:apply-templates select="commentaire"/>
            <xsl:apply-templates select="photo"/>
        </tr>
    </xsl:template>
    
    <xsl:template match="nom">
        <td>
            <xsl:value-of select="text()"/>
        </td>
    </xsl:template>
    <xsl:template match="prenom">
        <td>
            <xsl:value-of select="text()"/>
        </td>
    </xsl:template>
    <xsl:template match="pays">
        <td>
            <xsl:value-of select="text()"/>
        </td>
    </xsl:template>
    <xsl:template match="commentaire">
        <td>
            <xsl:value-of select="text()"/>
        </td>
    </xsl:template>
    <xsl:template match="photo">
        <td>
            <img height="100" width="100">
                <xsl:attribute name="src">
                    <xsl:value-of select="text()"/>
                </xsl:attribute>
            </img>
        </td>
    </xsl:template>
    
</xsl:stylesheet>