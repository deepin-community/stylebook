<?xml version="1.0"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/XSL/Transform/1.0">

  <xsl:param name="image"/>
  <xsl:param name="highlight"/>
  <xsl:param name="shadow1"/>
  <xsl:param name="shadow2"/>

  <xsl:template match="/">
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="context">
    <image source="{$image}">
      <xsl:apply-templates/>
    </image>
  </xsl:template>

  <xsl:template match="parameter">
    <xsl:if test="@name='label'">
      <text font="Arial Bold" size="11" x="20" y="6" style="plain"
            halign="left" valign="top" color="{$shadow2}"
            text="{@value}"/>
      <text font="Arial Bold" size="11" x="19" y="5" style="plain"
            halign="left" valign="top" color="{$shadow1}"
            text="{@value}"/>
      <text font="Arial Bold" size="11" x="18" y="4" style="plain"
            halign="left" valign="top" color="{$highlight}"
            text="{@value}"/>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>