<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                exclude-result-prefixes="#all"
                version="2.0">
   <xsl:import href="file:/D:/Users/truongda/Documents/GitHub/example-firesat/build/stylesheets-gen/docbook_xsl/fo/docbook.xsl"/>
   <xsl:include href="pdf_title.xsl"/>
   <!-- Used for removing the word chapter from the chapter title -->
   <xsl:param name="local.l10n.xml" select="document('')"/>
   <l:i18n xmlns:l="http://docbook.sourceforge.net/xmlns/l10n/1.0">
      <l:l10n language="en">
         <l:context name="title-numbered">
            <l:template name="chapter" text="%n. %t"/>
         </l:context>
      </l:l10n>
   </l:i18n>
   <!-- Tags that will be replaced with the template chnages -->
</xsl:stylesheet>
