<?xml version="1.0"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/XSL/Transform/1.0">

  <xsl:param name="label"/>

  <xsl:template match="/">
    <image source="sbk:/style/graphics/header.gif">
      <xsl:apply-templates/>
    </image>
  </xsl:template>

  <xsl:template match="s1|faqs|changes">
      <xsl:variable name="title">
        <xsl:if test="string-length(@title)=0">
          <xsl:value-of select="$label"/>
        </xsl:if>
        <xsl:if test="string-length(@title)>0">
          <xsl:value-of select="@title"/>
        </xsl:if>
      </xsl:variable>
      <text font="Times New Roman Bold" size="40" x="607" y="12" style="plain"
            halign="right" valign="top" color="000000" text="{$title}"/>
      <text font="Times New Roman Bold" size="40" x="606" y="11" style="plain"
            halign="right" valign="top" color="000000" text="{$title}"/>
      <text font="Times New Roman Bold" size="40" x="605" y="10" style="plain"
            halign="right" valign="top" color="ffffff" text="{$title}"/>
  </xsl:template>

<!--
  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>
-->
</xsl:stylesheet>