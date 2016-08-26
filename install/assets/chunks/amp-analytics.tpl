/**
 * amp-analytics
 *
 * google analytics for amp
 *
 * @category	chunk
 * @internal @modx_category ampx
 */
<amp-analytics type="googleanalytics" id="analytics1">
<script type="application/json">
{
  "vars": {
    "account": "UA-XXXXX-Y"
  },
  "triggers": {
    "trackPageview": {
      "on": "visible",
      "request": "pageview"
    }
  }
}
</script>
</amp-analytics>