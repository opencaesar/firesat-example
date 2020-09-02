<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:d="http://docbook.org/ns/docbook" xmlns:exsl="http://exslt.org/common" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" exclude-result-prefixes="exsl d">

<!-- This stylesheet was created by template/titlepage.xsl-->

<xsl:template name="book.titlepage.recto">
  <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="d:bookinfo/d:mediaobject"/>
  <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="d:info/d:mediaobject"/>
  <xsl:choose>
    <xsl:when test="d:bookinfo/d:title">
      <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="d:bookinfo/d:title"/>
    </xsl:when>
    <xsl:when test="d:info/d:title">
      <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="d:info/d:title"/>
    </xsl:when>
    <xsl:when test="d:title">
      <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="d:title"/>
    </xsl:when>
  </xsl:choose>

  <xsl:choose>
    <xsl:when test="d:bookinfo/d:subtitle">
      <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="d:bookinfo/d:subtitle"/>
    </xsl:when>
    <xsl:when test="d:info/d:subtitle">
      <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="d:info/d:subtitle"/>
    </xsl:when>
    <xsl:when test="d:subtitle">
      <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="d:subtitle"/>
    </xsl:when>
  </xsl:choose>

  <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="d:bookinfo/d:textobject"/>
  <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="d:info/d:textobject"/>
  <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="d:bookinfo/d:simplelist"/>
  <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="d:info/d:simplelist"/>
  <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="d:bookinfo/d:para"/>
  <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="d:info/d:para"/>
  <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="d:bookinfo/d:date"/>
  <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="d:info/d:date"/>
  <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="d:bookinfo/d:productname"/>
  <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="d:info/d:productname"/>
  <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="d:bookinfo/d:imageobject"/>
  <xsl:apply-templates mode="book.titlepage.recto.auto.mode" select="d:info/d:imageobject"/>
</xsl:template>

<xsl:template name="book.titlepage.verso">
  <xsl:apply-templates mode="book.titlepage.verso.auto.mode" select="d:bookinfo/d:corpauthor"/>
  <xsl:apply-templates mode="book.titlepage.verso.auto.mode" select="d:info/d:corpauthor"/>
  <xsl:apply-templates mode="book.titlepage.verso.auto.mode" select="d:bookinfo/d:authorgroup"/>
  <xsl:apply-templates mode="book.titlepage.verso.auto.mode" select="d:info/d:authorgroup"/>
  <xsl:apply-templates mode="book.titlepage.verso.auto.mode" select="d:bookinfo/d:author"/>
  <xsl:apply-templates mode="book.titlepage.verso.auto.mode" select="d:info/d:author"/>
  <xsl:apply-templates mode="book.titlepage.verso.auto.mode" select="d:bookinfo/d:othercredit"/>
  <xsl:apply-templates mode="book.titlepage.verso.auto.mode" select="d:info/d:othercredit"/>
  <xsl:apply-templates mode="book.titlepage.verso.auto.mode" select="d:bookinfo/d:releaseinfo"/>
  <xsl:apply-templates mode="book.titlepage.verso.auto.mode" select="d:info/d:releaseinfo"/>
  <xsl:apply-templates mode="book.titlepage.verso.auto.mode" select="d:bookinfo/d:copyright"/>
  <xsl:apply-templates mode="book.titlepage.verso.auto.mode" select="d:info/d:copyright"/>
  <xsl:apply-templates mode="book.titlepage.verso.auto.mode" select="d:bookinfo/d:legalnotice"/>
  <xsl:apply-templates mode="book.titlepage.verso.auto.mode" select="d:info/d:legalnotice"/>
  <xsl:apply-templates mode="book.titlepage.verso.auto.mode" select="d:bookinfo/d:pubdate"/>
  <xsl:apply-templates mode="book.titlepage.verso.auto.mode" select="d:info/d:pubdate"/>
  <xsl:apply-templates mode="book.titlepage.verso.auto.mode" select="d:bookinfo/d:revision"/>
  <xsl:apply-templates mode="book.titlepage.verso.auto.mode" select="d:info/d:revision"/>
  <xsl:apply-templates mode="book.titlepage.verso.auto.mode" select="d:bookinfo/d:revhistory"/>
  <xsl:apply-templates mode="book.titlepage.verso.auto.mode" select="d:info/d:revhistory"/>
  <xsl:apply-templates mode="book.titlepage.verso.auto.mode" select="d:bookinfo/d:abstract"/>
  <xsl:apply-templates mode="book.titlepage.verso.auto.mode" select="d:info/d:abstract"/>
</xsl:template>

<xsl:template name="book.titlepage.separator"><hr/>
</xsl:template>

<xsl:template name="book.titlepage.before.recto">
</xsl:template>

<xsl:template name="book.titlepage.before.verso">
</xsl:template>

<xsl:template name="book.titlepage">
  <div class="titlepage">
    <xsl:variable name="recto.content">
      <xsl:call-template name="book.titlepage.before.recto"/>
      <xsl:call-template name="book.titlepage.recto"/>
    </xsl:variable>
    <xsl:variable name="recto.elements.count">
      <xsl:choose>
        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($recto.content)/*)"/></xsl:when>
        <xsl:otherwise>1</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:if test="(normalize-space($recto.content) != '') or ($recto.elements.count &gt; 0)">
      <div><xsl:copy-of select="$recto.content"/></div>
    </xsl:if>
    <xsl:variable name="verso.content">
      <xsl:call-template name="book.titlepage.before.verso"/>
      <xsl:call-template name="book.titlepage.verso"/>
    </xsl:variable>
    <xsl:variable name="verso.elements.count">
      <xsl:choose>
        <xsl:when test="function-available('exsl:node-set')"><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
        <xsl:when test="contains(system-property('xsl:vendor'), 'Apache Software Foundation')">
          <!--Xalan quirk--><xsl:value-of select="count(exsl:node-set($verso.content)/*)"/></xsl:when>
        <xsl:otherwise>1</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:if test="(normalize-space($verso.content) != '') or ($verso.elements.count &gt; 0)">
      <div><xsl:copy-of select="$verso.content"/></div>
    </xsl:if>
    <xsl:call-template name="book.titlepage.separator"/>
  </div>
</xsl:template>

<xsl:template match="*" mode="book.titlepage.recto.mode">
  <!-- if an element isn't found in this mode, -->
  <!-- try the generic titlepage.mode -->
  <xsl:apply-templates select="." mode="titlepage.mode"/>
</xsl:template>

<xsl:template match="*" mode="book.titlepage.verso.mode">
  <!-- if an element isn't found in this mode, -->
  <!-- try the generic titlepage.mode -->
  <xsl:apply-templates select="." mode="titlepage.mode"/>
</xsl:template>

<xsl:template match="d:mediaobject" mode="book.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="book.titlepage.recto.style">
<xsl:apply-templates select="." mode="book.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template match="d:title" mode="book.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="book.titlepage.recto.style">
<xsl:apply-templates select="." mode="book.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template match="d:subtitle" mode="book.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="book.titlepage.recto.style">
<xsl:apply-templates select="." mode="book.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template match="d:textobject" mode="book.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="book.titlepage.recto.style">
<xsl:apply-templates select="." mode="book.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template match="d:simplelist" mode="book.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="book.titlepage.recto.style" text-align="left">
<xsl:apply-templates select="." mode="book.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template match="d:para" mode="book.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="book.titlepage.recto.style">
<xsl:apply-templates select="." mode="book.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template match="d:date" mode="book.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="book.titlepage.recto.style" text-align="left">
<xsl:apply-templates select="." mode="book.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template match="d:productname" mode="book.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="book.titlepage.recto.style" text-align="left">
<xsl:apply-templates select="." mode="book.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template match="d:imageobject" mode="book.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="book.titlepage.recto.style" text-align="left">
<xsl:apply-templates select="." mode="book.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template match="d:corpauthor" mode="book.titlepage.verso.auto.mode">
<div xsl:use-attribute-sets="book.titlepage.verso.style">
<xsl:apply-templates select="." mode="book.titlepage.verso.mode"/>
</div>
</xsl:template>

<xsl:template match="d:authorgroup" mode="book.titlepage.verso.auto.mode">
<div xsl:use-attribute-sets="book.titlepage.verso.style">
<xsl:apply-templates select="." mode="book.titlepage.verso.mode"/>
</div>
</xsl:template>

<xsl:template match="d:author" mode="book.titlepage.verso.auto.mode">
<div xsl:use-attribute-sets="book.titlepage.verso.style">
<xsl:apply-templates select="." mode="book.titlepage.verso.mode"/>
</div>
</xsl:template>

<xsl:template match="d:othercredit" mode="book.titlepage.verso.auto.mode">
<div xsl:use-attribute-sets="book.titlepage.verso.style">
<xsl:apply-templates select="." mode="book.titlepage.verso.mode"/>
</div>
</xsl:template>

<xsl:template match="d:releaseinfo" mode="book.titlepage.verso.auto.mode">
<div xsl:use-attribute-sets="book.titlepage.verso.style">
<xsl:apply-templates select="." mode="book.titlepage.verso.mode"/>
</div>
</xsl:template>

<xsl:template match="d:copyright" mode="book.titlepage.verso.auto.mode">
<div xsl:use-attribute-sets="book.titlepage.verso.style">
<xsl:apply-templates select="." mode="book.titlepage.verso.mode"/>
</div>
</xsl:template>

<xsl:template match="d:legalnotice" mode="book.titlepage.verso.auto.mode">
<div xsl:use-attribute-sets="book.titlepage.verso.style">
<xsl:apply-templates select="." mode="book.titlepage.verso.mode"/>
</div>
</xsl:template>

<xsl:template match="d:pubdate" mode="book.titlepage.verso.auto.mode">
<div xsl:use-attribute-sets="book.titlepage.verso.style">
<xsl:apply-templates select="." mode="book.titlepage.verso.mode"/>
</div>
</xsl:template>

<xsl:template match="d:revision" mode="book.titlepage.verso.auto.mode">
<div xsl:use-attribute-sets="book.titlepage.verso.style">
<xsl:apply-templates select="." mode="book.titlepage.verso.mode"/>
</div>
</xsl:template>

<xsl:template match="d:revhistory" mode="book.titlepage.verso.auto.mode">
<div xsl:use-attribute-sets="book.titlepage.verso.style">
<xsl:apply-templates select="." mode="book.titlepage.verso.mode"/>
</div>
</xsl:template>

<xsl:template match="d:abstract" mode="book.titlepage.verso.auto.mode">
<div xsl:use-attribute-sets="book.titlepage.verso.style">
<xsl:apply-templates select="." mode="book.titlepage.verso.mode"/>
</div>
</xsl:template>

</xsl:stylesheet>
