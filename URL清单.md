# xqtd-guide.com URL 清单

> 定期核对：页面能否打开 → 百度搜索资源平台「普通收录」是否已提交 → 收录是否正常 → 内容是否需要补充。  
> 新页面上线后：**复制最后一行模板**，填好并同步更新 `sitemap.xml`。

**主域名**：https://xqtd-guide.com  
**备用域名**：https://xqtd-guide.netlify.app（Netlify 默认，一般不必单独提交）

---

## 一、内容页（需提交百度收录）

| # | 页面 | URL | 类型 | sitemap | 百度已提交 | 收录状态 | 最后更新 | 待补充 |
|---|------|-----|------|---------|-----------|---------|---------|--------|
| 1 | 首页 | https://xqtd-guide.com/ | 首页 | ✅ | | | 2026-06-26 | |
| 2 | 千冶刃配队 | https://xqtd-guide.com/guides/team-qianye.html | 攻略 | ✅ | | | 2026-06-26 | 截图、正文细化 |
| 3 | 星启模式深渊 | https://xqtd-guide.com/guides/abyss-xingqi.html | 攻略 | ✅ | | | 2026-06-22 | 截图、正文细化 |
| 4 | 匹诺康尼宝箱 | https://xqtd-guide.com/guides/chest-pinnocchio.html | 攻略 | ✅ | | | 2026-06-20 | 截图、正文细化 |
| 5 | 材料/遗器速刷 | https://xqtd-guide.com/guides/material-relic.html | 攻略 | ✅ | | | 2026-06-18 | 截图、正文细化 |
| 6 | 关于本站 | https://xqtd-guide.com/pages/about.html | 说明 | ✅ | | | 2026-06-26 | |
| 7 | 隐私政策 | https://xqtd-guide.com/pages/privacy.html | 说明 | ✅ | | | 2026-06-26 | |
| 8 | 免责声明 | https://xqtd-guide.com/pages/disclaimer.html | 说明 | ✅ | | | 2026-06-26 | |

**百度已提交**：填 `是` / `否` / 提交日期（如 `2026-06-26`）  
**收录状态**：填 `已收录` / `未收录` / `审核中`（以百度搜索 `site:xqtd-guide.com` 为准）

---

## 二、短链重定向（可选提交，非必须）

| # | 说明 | 短链 URL | 跳转到 |
|---|------|----------|--------|
| R1 | 配队分类 | https://xqtd-guide.com/guides/team/ | team-qianye.html |
| R2 | 深渊分类 | https://xqtd-guide.com/guides/abyss/ | abyss-xingqi.html |
| R3 | 宝箱分类 | https://xqtd-guide.com/guides/chest/ | chest-pinnocchio.html |
| R4 | 材料分类 | https://xqtd-guide.com/guides/material/ | material-relic.html |
| R5 | 更新汇总 | https://xqtd-guide.com/guides/update/ | 首页 |

---

## 三、系统 / 工具页（一般不提交收录）

| # | 说明 | URL | 备注 |
|---|------|-----|------|
| S1 | 站点地图 | https://xqtd-guide.com/sitemap.xml | robots.txt 已声明；平台 sitemap 提交暂置灰可等 |
| S2 | 爬虫规则 | https://xqtd-guide.com/robots.txt | |
| S3 | 广告认证 | https://xqtd-guide.com/ads.txt | 百度联盟为主 |
| S4 | 百度验证文件 | https://xqtd-guide.com/baidu_verify_codeva-6KVcKwqaHt.html | 验证已完成，保留即可 |
| S5 | 404 页 | https://xqtd-guide.com/404.html | 不主动提交 |

---

## 四、待新增攻略（复制模板填行）

| # | 页面 | URL | 类型 | sitemap | 百度已提交 | 收录状态 | 最后更新 | 待补充 |
|---|------|-----|------|---------|-----------|---------|---------|--------|
| 9 | （例：新角色攻略） | https://xqtd-guide.com/guides/________.html | 攻略 | | | | | 标题、正文、截图 |
| 10 | | https://xqtd-guide.com/guides/________.html | 攻略 | | | | | |

**新增页面检查清单**：
- [ ] HTML 文件已放入 `guides/`
- [ ] 首页 / 导航已加链接
- [ ] `sitemap.xml` 已加 `<url>`
- [ ] 本表已加一行
- [ ] 百度搜索资源平台「普通收录」已提交 URL

---

## 五、外部后台（非本站 URL，定期登录）

| 平台 | 地址 | 用途 |
|------|------|------|
| 百度搜索资源平台 | https://ziyuan.baidu.com/ | 收录提交、索引量、抓取诊断 |
| 百度统计 | https://tongji.baidu.com/ | 访问量、来源、热门页 |
| 百度联盟 | https://union.baidu.com/ | 广告审核、cpro_id |
| Netlify 控制台 | https://app.netlify.com/ | 部署状态、域名 |
| Cloudflare | https://dash.cloudflare.com/ | DNS、SSL、Bot 设置 |
| GitHub 仓库 | https://github.com/qiaofeng0352/xqtd-guide-website | 代码与 push |

---

## 六、快速自检命令

浏览器打开或用 curl 测 200：

```
https://xqtd-guide.com/
https://xqtd-guide.com/guides/team-qianye.html
https://xqtd-guide.com/sitemap.xml
```

百度查收录：搜索 `site:xqtd-guide.com`
