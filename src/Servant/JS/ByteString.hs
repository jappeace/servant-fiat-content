module Servant.JS.ByteString
  ( JS ) where

import qualified Data.ByteString      as BS
import qualified Data.ByteString.Lazy as LBS
import qualified Data.Text            as Text
import qualified Data.Text.Encoding   as Text
import           Data.Typeable
import qualified Network.HTTP.Media   as M
import           Servant.API

-- | Give me some text, and we'll pretend it's javascript.
--   I used this to render the routes as endpoint that's always up to date
data JS deriving Typeable
instance Accept JS where
    contentTypes _ = pure $ "application" M.// "javascript"

instance MimeRender JS LBS.ByteString where
    mimeRender _ = id
instance MimeRender JS BS.ByteString where
    mimeRender p = mimeRender p . LBS.fromStrict
instance MimeRender JS Text.Text where
    mimeRender p = mimeRender p . Text.encodeUtf8
