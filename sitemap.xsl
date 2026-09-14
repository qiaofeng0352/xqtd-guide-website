<?xml version="1.0" encoding="UTF-8"?>
<!-- 站点地图样式表：仅供浏览器阅读，搜索引擎会忽略本文件 -->
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:s="http://www.sitemaps.org/schemas/sitemap/0.9"
  exclude-result-prefixes="s">

  <xsl:output method="html" encoding="UTF-8" indent="yes" doctype-system="about:legacy-compat"/>

  <xsl:template match="/">
    <html lang="zh-CN">
      <head>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <meta name="robots" content="noindex"/>
        <title>站点地图 — 星穹铁道攻略站</title>
        <style>
          :root { --brand:#2b3a67; --accent:#c8102e; --line:#e6e8ef; --bg:#f7f8fb; }
          * { box-sizing:border-box; }
          body { margin:0; padding:32px 20px 64px; background:var(--bg); color:#1c2033;
                 font-family:-apple-system,BlinkMacSystemFont,"Segoe UI","PingFang SC","Microsoft YaHei",sans-serif; }
          .wrap { max-width:980px; margin:0 auto; background:#fff; border:1px solid var(--line);
                  border-radius:12px; padding:28px 28px 36px; box-shadow:0 1px 3px rgba(28,32,51,.06); }
          h1 { margin:0 0 6px; font-size:1.45rem; color:var(--brand); }
          .sub { margin:0 0 22px; font-size:.86rem; color:#6b7280; line-height:1.7; }
          .badge { display:inline-block; margin:0 8px 8px 0; padding:4px 10px; border-radius:999px;
                   background:#eef1f8; color:var(--brand); font-size:.78rem; font-weight:600; }
          .note { margin:0 0 20px; padding:12px 14px; background:#fff8e6; border-left:3px solid #e6a700;
                  border-radius:6px; font-size:.82rem; color:#6b5a1a; line-height:1.7; }
          table { width:100%; border-collapse:collapse; font-size:.84rem; }
          th { text-align:left; padding:10px 12px; background:var(--brand); color:#fff;
               font-weight:600; font-size:.78rem; letter-spacing:.02em; }
          th:first-child { border-radius:8px 0 0 0; }
          th:last-child { border-radius:0 8px 0 0; }
          td { padding:10px 12px; border-bottom:1px solid var(--line); vertical-align:top; }
          tr:nth-child(even) td { background:#fafbfd; }
          a { color:var(--accent); text-decoration:none; word-break:break-all; }
          a:hover { text-decoration:underline; }
          .num { text-align:right; color:#6b7280; font-variant-numeric:tabular-nums; }
          .freq { color:#374151; }
          .date { color:#6b7280; white-space:nowrap; font-variant-numeric:tabular-nums; }
          .hi { display:inline-block; width:7px; height:7px; border-radius:50%; background:#e6a700; margin-right:6px; }
          footer { margin-top:20px; font-size:.78rem; color:#9ca3af; line-height:1.8; }
        </style>
      </head>
      <body>
        <div class="wrap">
          <h1>站点地图 · sitemap.xml</h1>
          <p class="sub">
            本文件列出站内全部可抓取页面，供搜索引擎（Google / 百度 / Bing）收录使用。
            当前收录 <span class="badge"><xsl:value-of select="count(//s:url)"/> 个 URL</span>
            <span class="badge">更新于 <xsl:value-of select="//s:url[1]/s:lastmod"/></span>
          </p>
          <p class="note">
            <strong>提示：</strong>这里显示的是 XML 源数据结构，属正常现象。搜索引擎读取原始 XML，不会受排版影响；
            页面样式仅用于人工查看时更易读。
          </p>
          <table>
            <thead>
              <tr>
                <th style="width:32px">#</th>
                <th>页面地址</th>
                <th style="width:110px">最后更新</th>
                <th style="width:96px">更新频率</th>
                <th style="width:64px">权重</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="//s:url">
                <xsl:sort select="s:priority" data-type="number" order="descending"/>
                <tr>
                  <td class="num"><xsl:value-of select="position()"/></td>
                  <td>
                    <xsl:if test="number(s:priority) &gt;= 0.9"><span class="hi"/></xsl:if>
                    <a href="{s:loc}"><xsl:value-of select="s:loc"/></a>
                  </td>
                  <td class="date"><xsl:value-of select="s:lastmod"/></td>
                  <td class="freq"><xsl:value-of select="s:changefreq"/></td>
                  <td class="num"><xsl:value-of select="s:priority"/></td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>
          <footer>
            星穹铁道攻略站 xqtd-guide.com · 按权重降序排列 · 黄点标记重点页面（权重 ≥ 0.9）
          </footer>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
