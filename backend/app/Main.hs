
module Main (main) where

import Network.Wai.Handler.Warp (run)
import Lib (app)

main :: IO ()
main = do
  print "listen http://localhost:8000"
  run 8000 app

