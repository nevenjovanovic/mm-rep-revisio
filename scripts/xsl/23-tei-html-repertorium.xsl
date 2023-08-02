<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    version="2.0">
    <!-- 23-tei-html-repertorium: 
        Transform Marulić's Repertorium to HTML, 
        use Chota CSS
        Neven Jovanović  -->
    <xsl:import href="file:/home/neven/Oxygen%20XML%20Editor%2025/frameworks/tei/xml/tei/stylesheet/html/html.xsl"/>
    
    <xsl:template match="tei:pb[@type='kks']">
        <xsl:variable name="Words">
            <xsl:text>[Pagina KKS</xsl:text>
            <xsl:if test="@n">
                <xsl:text> </xsl:text>
                <xsl:value-of select="@n"/>
            </xsl:if>
            <xsl:text>]</xsl:text>
        </xsl:variable>
        <xsl:element name="p">
            <xsl:attribute name="class">bg-light</xsl:attribute>
        <xsl:copy-of select="$Words"/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:pb[@type='bnc']">
        <xsl:variable name="Words">
            <xsl:text>[Pagina MS Ges. 522</xsl:text>
            <xsl:if test="@n">
                <xsl:text> </xsl:text>
                <xsl:value-of select="@n"/>
            </xsl:if>
            <xsl:text>]</xsl:text>
        </xsl:variable>
        <xsl:element name="p">
            <xsl:attribute name="class">bg-success</xsl:attribute>
            <xsl:copy-of select="$Words"/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:noteGrp">
        <xsl:element name="div">
            <xsl:attribute name="class">card</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:note[@place]">
        <xsl:element name="span">
            <xsl:attribute name="class"><xsl:value-of select="(if (contains(@place,'right'))
                then 'tag pull-right' else if (contains(@place,'left'))
                then 'tag pull-left'
                else 'tag text-center')"/></xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    
    
    
    <xsl:template match="tei:w[@norm]">
        <xsl:choose>
            <xsl:when test="tei:abbr">
                <xsl:element name="span">
                    <xsl:attribute name="class">tooltip</xsl:attribute>
                    <xsl:attribute name="data-tooltip">
                        <xsl:value-of select="tei:abbr/string()"/>
                    </xsl:attribute>
                    <xsl:value-of select="@norm"/>
                </xsl:element>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="@norm"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="tei:graphic[@url='vitis']">
        <xsl:element name="div">
            <xsl:attribute name="class">vitis</xsl:attribute>
            <xsl:attribute name="style">height: 45px;</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:graphic[@url='manicula']">
        <xsl:element name="img">
            <xsl:attribute name="src">../images/manicula.jpg</xsl:attribute>
            <xsl:attribute name="alt">manicula sinistra</xsl:attribute>
            <xsl:attribute name="width">50</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:graphic[@url='manicula-d']">
        <xsl:element name="img">
            <xsl:attribute name="src">../images/manicula-d.jpg</xsl:attribute>
            <xsl:attribute name="alt">manicula dextra</xsl:attribute>
            <xsl:attribute name="width">50</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:ref">
        <xsl:element name="span">
            <xsl:attribute name="class">text-primary</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:choice[tei:orig]">
        <xsl:element name="span">
            <xsl:attribute name="class">bg-error</xsl:attribute>
            <xsl:value-of select="tei:orig/string()"/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:sic">
        <xsl:element name="span">
            <xsl:attribute name="class">bd-error</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:expan">
        <xsl:element name="span">
            <xsl:attribute name="class">bg-light</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>