module Servant.HTML.ByteString(HTML) where

import qualified Data.ByteString      as BS
import qualified Data.ByteString.Lazy as LBS
import qualified Data.List.NonEmpty   as NE
import           Data.Typeable        (Typeable)
import qualified Network.HTTP.Media   as M
import           Servant.API          (Accept (..), MimeRender (..))

-- | give me bytestring, We'll pretend it's HTML
--   this is usefull for reflex,
--   which can only do server side rendering in IO.
data HTML deriving Typeable

instance Accept HTML where
    contentTypes _ =
      "text" M.// "html" M./: ("charset", "utf-8") NE.:|
      ["text" M.// "html"]

instance MimeRender HTML LBS.ByteString where
    mimeRender _ = id

instance MimeRender HTML BS.ByteString where
    mimeRender _ = LBS.fromStrict
