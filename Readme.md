# Servant BS content

Sometimes you want to have a plain text just be an HTML content type response,
for example when you use a reflex to generate HTML, you have
to use IO: https://hackage.haskell.org/package/reflex-dom-core-0.4/docs/Reflex-Dom-Builder-Static.html#v:renderStatic

Or a plain text be a Javascript, when you generate javascript
clients in servant and want them to always be up to date with
the running server (no filesystem BS):
http://hackage.haskell.org/package/servant-js-0.9.4/docs/Servant-JS.html#v:jsForAPI

Fear not! we can do this rather trivially.
As shown by this module.

