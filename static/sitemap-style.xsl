<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9"
                exclude-result-prefixes="sitemap">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>📍 Sitemap Overview</title>
        <style>
          body {
            background: #f5f7fa;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            padding: 40px;
            color: #333;
          }

          h1 {
            font-size: 32px;
            color: #222;
            margin-bottom: 30px;
            border-bottom: 2px solid #ddd;
            padding-bottom: 10px;
          }

          .container {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 16px;
          }

          .url-card {
            background: #fff;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);
            padding: 20px;
            transition: transform 0.2s ease-in-out;
          }

          .url-card:hover {
            transform: scale(1.02);
          }

          .url-card a {
            text-decoration: none;
            color: #0077cc;
            font-weight: 600;
            word-break: break-all;
            font-size: 15px;
          }

          .url-card a:hover {
            text-decoration: underline;
          }

          footer {
            margin-top: 40px;
            text-align: center;
            font-size: 12px;
            color: #aaa;
          }
        </style>
      </head>
      <body>
        <h1>📍 Sitemap Overview</h1>
        <div class="container">
          <xsl:for-each select="//sitemap:url">
            <div class="url-card">
              <a href="{sitemap:loc}" target="_blank">
                <xsl:value-of select="sitemap:loc"/>
              </a>
            </div>
          </xsl:for-each>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
