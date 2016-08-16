# ampx Beta 1
Accelerated Mobile Pages (AMP) for  MODX Evo

NOTE: it's a very beta release and there are a lot of AMP features to add (I have not read all the amp documentation ) and MODX issues to fix
It is not an elegant solution (there is no friendly url), but it seems to work for blogpost/content pages: 

https://github.com/Nicola1971/ampx

# Installation with Packagemanager 

### Step 1) Create a new resource: 

* template amp-blank
* richtext: no
* content: [!ampx!]
* pagetitle: amp

### Step 2) Add to the HEAD tag of your default Post Template the link to your AMP version

```<link rel="amphtml" href="[(site_url)][~57~]?id=[*id*]" />```

#### you can pass tpl parameter via URL:
 ```<link rel="amphtml" href="[(site_url)][~57~]?ampid=[*id*]&tpl=amp-Template-Home" />```
 
```<link rel="amphtml" href="[(site_url)][~57~]?ampid=[*id*]&tpl=amp-Template-Container" />```
####  or use If snippet:
```<link rel="amphtml" href="[(site_url)][~57~]?ampid=[*id*][[if? &is=`[*id*]:=:1` &then=`&tpl=amp-Template-Home`]]" />``` 

 ```<link rel="amphtml" href="[(site_url)][~57~]?ampid=[*id*][[if? &is=`[*isfolder*]:is:1` &then=`&tpl=amp-Template-Container`]]" />```


IMPORTANT: Replace 57 with the ID of resource created at Step 1


Issue:

1) this beta support only pagetitle, content, longtitle, description, introtext, pubdate and a custom image tv (with snippet parameter &imageTv=`tvname`)

2) issue: validation error with any active plugins that loads something (like js to the page code) with OnWebPagePrerender 

3) issue with snippets inside content

#Updates:

# Beta 1.0.2: 

* Support for Homepage and Containers (category) pages
* now, you can pass tpl parameter to url
* new templates for Home and Containers
* ditto tpl
* more placeholders

# Beta 1.0.1: 

* added snippet folder
* image sanitize
* new template
* added author placeholder

# Beta 1: 

* first commit
