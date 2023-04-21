module Lib ( app ) where

import Network.Wai
import Network.HTTP.Types (status200)
import qualified Data.ByteString.Lazy.Char8 as BLC
import qualified Data.Text.IO as TIO
import qualified Data.Text as T


app :: Application
app _ send = do
  text <- TIO.readFile "static/index.html"
  let str = T.unpack text
  send $ responseLBS status200 [] (BLC.pack str)