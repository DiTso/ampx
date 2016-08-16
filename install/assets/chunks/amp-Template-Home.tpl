/**
 * amp-Template-Home
 *
 * AMP (Accelerated Mobile Pages) Template for AMPx
 *
 * @category	chunk
 * @internal @modx_category ampx
 */
<!doctype html>
<html AMP lang="en" itemscope itemtype="http://schema.org/WebPage">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no">
	<title>[+amptitle+]</title>
    <link itemprop="mainEntityOfPage" rel="canonical" href="[+canonicalurl+]" />
	<link href='https://fonts.googleapis.com/css?family=Merriweather:400,400italic,700italic' rel='stylesheet' type='text/css'>
    <script type="application/ld+json">
      {
        "@context": "http://schema.org",
        "@type": "WebPage",
        "headline": "[+amplongtitle+]",
        "datePublished": "[+datePublished+]",
        "image": [
          "[+ampimage+]"
        ]
      }
    </script>
    <style amp-boilerplate>body{-webkit-animation:-amp-start 8s steps(1,end) 0s 1 normal both;-moz-animation:-amp-start 8s steps(1,end) 0s 1 normal both;-ms-animation:-amp-start 8s steps(1,end) 0s 1 normal both;animation:-amp-start 8s steps(1,end) 0s 1 normal both}@-webkit-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-moz-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-ms-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-o-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}</style><noscript><style amp-boilerplate>body{-webkit-animation:none;-moz-animation:none;-ms-animation:none;animation:none}</style></noscript>
    <script async src="https://cdn.ampproject.org/v0.js"></script>

	<style amp-custom>
 {{amp-Template-css}}
	</style>
</head>
<body>
<nav class="ampx-title-bar">
	<div>
		<a href="[(site_url)]"> <amp-img src="[(site_url)]assets/images/logo.png" width="32" height="32" class="ampx-site-icon"></amp-img>
			[(site_name)]
		</a>
	</div>
</nav>
<div class="ampx-content">

	<h1 itemprop="headline" class="ampx-title"><a href="[+canonicalurl+]">[+amplongtitle+]</a></h1>
	<h3>[+ampdescription+]</h3>
[[Ditto? &amp;parents=`38,102,117,126,145,159,122,109` &display=`10` &filter=`inHomepage,si` &removeChunk=`Comments` &tpl=`amp-ditto-blog` &paginate=`0` &extenders=`summary,dateFilter` &paginateAlwaysShowLinks=`0`]]
</div>
<div class="ampx-footer">
<p> <a href="http://www.tattoocms.it/" title="AMPx Accelerated Mobile Pages for MODX Evolution">Powered
          by AMPx</a> <br/>Accelerated Mobile Pages for MODX Evolution<br />
	<a href="[+canonicalurl+]">[switch to default view]</a> 
</p>
</div>
</body>
</html>