[![https://jappieklooster.nl](https://img.shields.io/badge/blog-jappieklooster.nl-lightgrey)](https://jappieklooster.nl/tag/haskell.html)
[![Jappiejappie](https://img.shields.io/badge/twitch.tv-jappiejappie-purple?logo=twitch)](https://www.twitch.tv/jappiejappie)
[![Githbu actions build status](https://img.shields.io/github/workflow/status/jappeace/servant-fiat-content/Test)](https://github.com/jappeace/servant-fiat-content/actions)
[![Jappiejappie](https://img.shields.io/badge/discord-jappiejappie-black?logo=discord)](https://discord.gg/Hp4agqy)
[![Hackage version](https://img.shields.io/hackage/v/servant-fiat-content.svg?label=Hackage)](https://hackage.haskell.org/package/servant-fiat-content) 

# Servant fiat content

Sometimes you want to have a plain text just be an HTML content type response,
for example when you use a reflex to generate HTML, you have
to use IO: https://hackage.haskell.org/package/reflex-dom-core-0.4/docs/Reflex-Dom-Builder-Static.html#v:renderStatic

Or a plain text be a Javascript, when you generate javascript
clients in servant and want them to always be up to date with
the running server (no filesystem BS):
http://hackage.haskell.org/package/servant-js-0.9.4/docs/Servant-JS.html#v:jsForAPI

Fear not! we can do this rather trivially, shown by this module.

