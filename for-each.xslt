<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:output method="text" />
   <xsl:template match="users">
      [
      <xsl:for-each select="user">
         <xsl:sort select="@userID" />
         {
         	"id": "<xsl:value-of select="@userID" />",
			"login": "<xsl:value-of select="login" />",
			"email": "<xsl:value-of select="email" />",
			"listenOffline": "<xsl:value-of select="listenOffline" />",
			"lastTreck": "<xsl:value-of select="lastUseSettings/track" />",
			"volume": "<xsl:value-of select="lastUseSettings/volume" />",
			"repeat": "<xsl:value-of select="repeat" />",
			"notificationEmail": "<xsl:value-of select="notification/notificationEmail" />",
			"notificationPush": "<xsl:value-of select="notification/notificationPush" />",
			"sendReports": "<xsl:value-of select="sendReports" />"
			}
         <xsl:if test="position() != last()">,</xsl:if>
      </xsl:for-each>
      ]
   </xsl:template>
</xsl:stylesheet>