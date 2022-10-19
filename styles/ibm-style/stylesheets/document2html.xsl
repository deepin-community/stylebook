<?xml version="1.0"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/XSL/Transform/1.0">

  <xsl:param name="stylebook.project"/>
  <xsl:param name="id"/>

  <xsl:template match="/">
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="s1">
    <html>
      <head>
        <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
        <script language="JavaScript" type="text/javascript" src="resources/script.js"/>
        <title><xsl:value-of select="@title"/></title>
      </head>
      <body bgcolor="#000000" text="#000000" link="#0000ff" vlink="#0000ff" alink="#ff0000"
            topmargin="5" leftmargin="5" marginwidth="5" marginheight="5">
        <table width="620" bgcolor="#000000" cellspacing="0" cellpadding="0" border="0">
          <!-- THE TOP BAR (HEADER) -->
          <tr>
            <td colspan="2">
              <img src="graphics/{$id}-header.jpg" width="620" height="50" vspace="0" hspace="0" border="0" align="left" alt="{s1/@title}"/>
            </td>
          </tr>
          <!-- THE LINK BUTTONS BAR (IBM LINKS) -->
          <tr>
            <td colspan="2">
              <img src="resources/topbar.gif" width="200" height="17" vspace="0" hspace="0" border="0" align="left" alt=""/>
              <a href="http://www.alphaworks.ibm.com/" onMouseOver="rolloverOn('awk');" onMouseOut="rolloverOff('awk');" target="new">
                <img alt="www.alphaworks.ibm.com" onLoad="rolloverLoad('awk','resources/button-awk-1.gif','resources/button-awk-0.gif');"
                     name="awk" src="resources/button-awk-0.gif" width="140" height="17" vspace="0" hspace="0" border="0" align="left"/>
              </a>
              <a href="http://www.ibm.com/developer/" onMouseOver="rolloverOn('dev');" onMouseOut="rolloverOff('dev');" target="new">
                <img alt="www.ibm.com/developer" onLoad="rolloverLoad('dev','resources/button-dev-1.gif','resources/button-dev-0.gif');"
                     name="dev" src="resources/button-dev-0.gif" width="140" height="17" vspace="0" hspace="0" border="0" align="left"/>
              </a>
              <a href="http://www.ibm.com/" onMouseOver="rolloverOn('ibm');" onMouseOut="rolloverOff('ibm');" target="new">
                <img alt="www.ibm.com" onLoad="rolloverLoad('ibm','resources/button-ibm-1.gif','resources/button-ibm-0.gif');"
                     name="ibm" src="resources/button-ibm-0.gif" width="140" height="17" vspace="0" hspace="0" border="0" align="left"/>
              </a>
            </td>
          </tr>
          <!-- THE MAIN PANEL (SIDEBAR AND CONTENT) -->
          <tr>
            <!-- THE SIDE BAR -->
            <td width="120" bgcolor="#999999" valign="top">
              <img src="resources/void.gif" width="114" height="2" vspace="0" hspace="3" border="0" alt=""/><br/>
                <xsl:apply-templates select="document($stylebook.project)"/>
              <img src="resources/void.gif" width="114" height="2" vspace="0" hspace="3" border="0" alt=""/><br/>
            </td>
            <!-- THE CONTENT -->
            <td width="500" bgcolor="#ffffff" valign="top">
              <table width="500" cellspacing="3" cellpadding="0" border="0">
                <tr>
                  <td>
                    <font face="arial,helvetica,sanserif" color="#000000">
                      <xsl:apply-templates/>
                    </font>
                  </td>
                </tr>  
              </table>
            </td>
          </tr>
          <tr>
            <td colspan="2" bgcolor="#9999cc"><img src="graphics/footer.jpg" vspace="0" hspace="0" border="0" align="left"/></td>
          </tr>
        </table>
      </body>
    </html>
  </xsl:template>

<!-- ###################################################################### -->
<!-- book -->

  <xsl:template match="book">
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="document|faqs|changes|group|container">
    <xsl:if test="@id=$id">
      <img src="graphics/{@id}-label-1.jpg" width="114" height="17" vspace="0" hspace="3" border="0" alt="{@label}"/>
    </xsl:if>
    <xsl:if test="@id!=$id">
      <a href="{@id}.html" onMouseOver="rolloverOn('side-{@id}');" onMouseOut="rolloverOff('side-{@id}');">
        <img onLoad="rolloverLoad('side-{@id}','graphics/{@id}-label-2.jpg','graphics/{@id}-label-3.jpg');"
             name="side-{@id}" src="graphics/{@id}-label-3.jpg" vspace="0" hspace="3" border="0" alt="{@label}"/>
      </a>
    </xsl:if>
    <br/>
  </xsl:template>

  <xsl:template match="external">
    <xsl:variable name="extid" select="concat('ext-',position())"/>
    <a href="{@href}" onMouseOver="rolloverOn('side-{$extid}');" onMouseOut="rolloverOff('side-{$extid}');">
      <img onLoad="rolloverLoad('side-{$extid}','graphics/{$extid}-label-2.jpg','graphics/{$extid}-label-3.jpg');"
           name="side-{$extid}" src="graphics/{$extid}-label-3.jpg" vspace="0" hspace="3" border="0" alt="{@label}"/>
    </a>
    <br/>
  </xsl:template>

  <xsl:template match="separator">
    <img src="resources/separator.gif" width="114" height="9" vspace="0" hspace="3" border="0"/><br/>
  </xsl:template>


<!-- ###################################################################### -->
<!-- document -->

  <xsl:template match="s2">
    <table width="494" cellspacing="0" cellpadding="0" border="0">
      <tr>
        <td bgcolor="666699" colspan="2" width="494">
          <table width="494" cellspacing="0" cellpadding="0" border="0">
            <tr>
              <td bgcolor="#ccccff" width="1"   height="1"><img src="resources/void.gif" width="1"   height="1" vspace="0" hspace="0" border="0"/></td>
              <td bgcolor="#ccccff" width="492" height="1"><img src="resources/void.gif" width="492" height="1" vspace="0" hspace="0" border="0"/></td>
              <td bgcolor="#666699" width="1"   height="1"><img src="resources/void.gif" width="1"   height="1" vspace="0" hspace="0" border="0"/></td>
            </tr>
            <tr>
              <td bgcolor="#ccccff" width="1"><img src="resources/void.gif" width="1" height="1" vspace="0" hspace="0" border="0"/></td>
              <td bgcolor="#666699"  width="492">
                <font size="+1" face="arial,helvetica,sanserif" color="#ffffff">
                  <img src="resources/void.gif" width="2" height="2" vspace="0" hspace="0" border="0"/>
                  <b><xsl:value-of select="@title"/></b>
                </font>
              </td>
              <td bgcolor="#333366" width="1"><img src="resources/void.gif" width="1" height="1" vspace="0" hspace="0" border="0"/></td>
            </tr>
            <tr>
              <td bgcolor="#666699" width="1"   height="1"><img src="resources/void.gif" width="1"   height="1" vspace="0" hspace="0" border="0"/></td>
              <td bgcolor="#333366" width="492" height="1"><img src="resources/void.gif" width="492" height="1" vspace="0" hspace="0" border="0"/></td>
              <td bgcolor="#333366" width="1"   height="1"><img src="resources/void.gif" width="1"   height="1" vspace="0" hspace="0" border="0"/></td>
            </tr>
          </table>
        </td>
      </tr>  
      <tr>
        <td width="10">&#160;</td>
        <td width="484">
          <font face="arial,helvetica,sanserif" color="#000000">
            <xsl:apply-templates/>
          </font>
        </td>
      </tr>  
    </table>
    <br/>
  </xsl:template>

  <xsl:template match="s3">
    <table width="484" cellspacing="0" cellpadding="0" border="0">
      <tr>
        <td bgcolor="666699" colspan="2" width="484">
          <table width="484" cellspacing="0" cellpadding="0" border="0">
          <tr>
            <td bgcolor="#ccccff" width="1"   height="1"><img src="resources/void.gif" width="1"   height="1" vspace="0" hspace="0" border="0"/></td>
            <td bgcolor="#ccccff" width="482" height="1"><img src="resources/void.gif" width="482" height="1" vspace="0" hspace="0" border="0"/></td>
            <td bgcolor="#666699" width="1"   height="1"><img src="resources/void.gif" width="1"   height="1" vspace="0" hspace="0" border="0"/></td>
          </tr>
          <tr>
            <td bgcolor="#ccccff" width="1"><img src="resources/void.gif" width="1" height="1" vspace="0" hspace="0" border="0"/></td>
            <td bgcolor="#666699"  width="482">
              <font face="arial,helvetica,sanserif" color="#ffffff">
                <img src="resources/void.gif" width="2" height="2" vspace="0" hspace="0" border="0"/>
                <b><xsl:value-of select="@title"/></b>
              </font>
            </td>
            <td bgcolor="#333366" width="1"><img src="resources/void.gif" width="1" height="1" vspace="0" hspace="0" border="0"/></td>
          </tr>
          <tr>
            <td bgcolor="#666699" width="1"   height="1"><img src="resources/void.gif" width="1"   height="1" vspace="0" hspace="0" border="0"/></td>
            <td bgcolor="#333366" width="482" height="1"><img src="resources/void.gif" width="482" height="1" vspace="0" hspace="0" border="0"/></td>
            <td bgcolor="#333366" width="1"   height="1"><img src="resources/void.gif" width="1"   height="1" vspace="0" hspace="0" border="0"/></td>
          </tr>
          </table>
        </td>
      </tr>  
      <tr>
        <td width="10">&#160;</td>
        <td width="474">
          <font size="-1" face="arial,helvetica,sanserif" color="#000000">
            <xsl:apply-templates/>
          </font>
        </td>
      </tr>  
    </table>
    <br/>
  </xsl:template>

  <xsl:template match="s4">
    <table width="474" cellspacing="0" cellpadding="0" border="0">
      <tr>
        <td bgcolor="666699" colspan="2" width="484">
          <table width="474" cellspacing="0" cellpadding="0" border="0">
          <tr>
            <td bgcolor="#ccccff" width="1"   height="1"><img src="resources/void.gif" width="1"   height="1" vspace="0" hspace="0" border="0"/></td>
            <td bgcolor="#ccccff" width="472" height="1"><img src="resources/void.gif" width="472" height="1" vspace="0" hspace="0" border="0"/></td>
            <td bgcolor="#666699" width="1"   height="1"><img src="resources/void.gif" width="1"   height="1" vspace="0" hspace="0" border="0"/></td>
          </tr>
          <tr>
            <td bgcolor="#ccccff" width="1"><img src="resources/void.gif" width="1" height="1" vspace="0" hspace="0" border="0"/></td>
            <td bgcolor="#666699"  width="472">
              <font size="-1" face="arial,helvetica,sanserif" color="#ffffff">
                <img src="resources/void.gif" width="2" height="2" vspace="0" hspace="0" border="0"/>
                <b><xsl:value-of select="@title"/></b>
              </font>
            </td>
            <td bgcolor="#333366" width="1"><img src="resources/void.gif" width="1" height="1" vspace="0" hspace="0" border="0"/></td>
          </tr>
          <tr>
            <td bgcolor="#666699" width="1"   height="1"><img src="resources/void.gif" width="1"   height="1" vspace="0" hspace="0" border="0"/></td>
            <td bgcolor="#333366" width="472" height="1"><img src="resources/void.gif" width="472" height="1" vspace="0" hspace="0" border="0"/></td>
            <td bgcolor="#333366" width="1"   height="1"><img src="resources/void.gif" width="1"   height="1" vspace="0" hspace="0" border="0"/></td>
          </tr>
          </table>
        </td>
      </tr>  
      <tr>
        <td width="10">&#160;</td>
        <td width="464">
          <font size="-1" face="arial,helvetica,sanserif" color="#000000">
            <xsl:apply-templates/>
          </font>
        </td>
      </tr>  
    </table>
    <br/>
  </xsl:template>

<!-- ###################################################################### -->
<!-- blocks -->

  <xsl:template match="p">
    <p><xsl:apply-templates/></p>
  </xsl:template>

  <xsl:template match="note">
    <table width="100%" cellspacing="3" cellpadding="0" border="0">
      <tr>
        <td width="20" valign="top">
          <img src="resources/note.gif" width="20" height="24" vspace="0" hspace="0" border="0" alt="Note"/>
        </td>
        <td valign="top">
          <font size="-1" face="arial,helvetica,sanserif" color="#000000">
            <i>
              <xsl:apply-templates/>
            </i>
          </font>
        </td>
      </tr>  
    </table>
  </xsl:template>

  <xsl:template match="ul">
    <ul><xsl:apply-templates/></ul>
  </xsl:template>

  <xsl:template match="ol">
    <ol><xsl:apply-templates/></ol>
  </xsl:template>

  <xsl:template match="li">
    <li><xsl:apply-templates/></li>
  </xsl:template>

  <xsl:template match="source">
  <div align="right">
  <table width="464" cellspacing="4" cellpadding="0" border="0">
    <tr>
      <td bgcolor="#666699" width="1"   height="1"><img src="resources/void.gif" width="1"   height="1" vspace="0" hspace="0" border="0"/></td>
      <td bgcolor="#666699" width="462" height="1"><img src="resources/void.gif" width="462" height="1" vspace="0" hspace="0" border="0"/></td>
      <td bgcolor="#666699" width="1"   height="1"><img src="resources/void.gif" width="1"   height="1" vspace="0" hspace="0" border="0"/></td>
    </tr>
    <tr>
      <td bgcolor="#666699" width="1"><img src="resources/void.gif" width="1" height="1" vspace="0" hspace="0" border="0"/></td>
      <td bgcolor="#ffffff"  width="462">
          <font size="-1"><pre><xsl:apply-templates/></pre></font>
      </td>
      <td bgcolor="#666699" width="1"><img src="resources/void.gif" width="1" height="1" vspace="0" hspace="0" border="0"/></td>
    </tr>
    <tr>
      <td bgcolor="#666699" width="1"   height="1"><img src="resources/void.gif" width="1"   height="1" vspace="0" hspace="0" border="0"/></td>
      <td bgcolor="#666699" width="462" height="1"><img src="resources/void.gif" width="462" height="1" vspace="0" hspace="0" border="0"/></td>
      <td bgcolor="#666699" width="1"   height="1"><img src="resources/void.gif" width="1"   height="1" vspace="0" hspace="0" border="0"/></td>
    </tr>
  </table>
  </div>
  </xsl:template>

  <xsl:template match="table">
    <table width="100%" border="0" cellspacing="2" cellpadding="2">
      <xsl:apply-templates/>
    </table>
  </xsl:template>

  <xsl:template match="tr">      
   <tr><xsl:apply-templates/></tr>
  </xsl:template>

  <xsl:template match="th">
    <td bgcolor="#9999cc" colspan="{@colspan}" rowspan="{@rowspan}" valign="center" align="center">
      <font color="#ffffff" size="-1" face="arial,helvetica,sanserif">
        <b><xsl:apply-templates/></b>&#160;
      </font>
    </td>
  </xsl:template>

  <xsl:template match="td">
    <td bgcolor="#ccccff" colspan="{@colspan}" rowspan="{@rowspan}" valign="top" align="{@align}">
      <font color="#000000" size="-1" face="arial,helvetica,sanserif">
        <xsl:apply-templates/>&#160;
      </font>
    </td>
  </xsl:template>

  <xsl:template match="tn">
    <td bgcolor="#ffffff" colspan="{@colspan}" rowspan="{@rowspan}">
      &#160;
    </td>
  </xsl:template>

<!-- ###################################################################### -->
<!-- markup -->

  <xsl:template match="em">
    <b><xsl:apply-templates/></b>
  </xsl:template>

  <xsl:template match="ref">
    <i><xsl:apply-templates/></i>
  </xsl:template>
  
  <xsl:template match="code">
    <code><font face="courier, monospaced"><xsl:apply-templates/></font></code>
  </xsl:template>
  
  <xsl:template match="br">
    <br/>
  </xsl:template>
  
<!-- ###################################################################### -->
<!-- links -->

  <xsl:template match="link">
    <xsl:if test="string-length(@anchor)=0">
      <xsl:if test="string-length(@idref)=0">
        <xsl:apply-templates/>
      </xsl:if>
      <xsl:if test="string-length(@idref)>0">
        <a href="{@idref}.html"><xsl:apply-templates/></a>
      </xsl:if>
    </xsl:if>

    <xsl:if test="string-length(@anchor)>0">
      <xsl:if test="string-length(@idref)=0">
        <a href="#{@anchor}"><xsl:apply-templates/></a>
      </xsl:if>
      <xsl:if test="string-length(@idref)>0">
        <a href="{@idref}.html#{@anchor}"><xsl:apply-templates/></a>
      </xsl:if>
    </xsl:if>
  </xsl:template>

  <xsl:template match="anchor">
    <a name="{@name}"><xsl:comment>anchor</xsl:comment></a>
  </xsl:template>

  <xsl:template match="jump">
    <a href="{@href}"><xsl:apply-templates/></a>
  </xsl:template>

  <xsl:template match="img">
    <img src="images/{@src}" alt="{@alt}" align="{@align}" border="0" vspace="4" hspace="4" />
  </xsl:template>

<!-- ###################################################################### -->
<!-- copy

  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>
-->
</xsl:stylesheet>