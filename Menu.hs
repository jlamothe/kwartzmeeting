module Menu ( Menu (..)
            , Item (..)
            , exec
            ) where

import Menu.Types
import qualified Data.Map as Map

exec :: Menu -> IO ()
exec menu = do
  putStr $ show menu
  sel <- prompt
  if isSelection menu sel
    then doSelection menu sel
    else do
    putStrLn "Invalid selection."
    exec menu

prompt :: IO Char
prompt = do
  putStr "\nPlease make your selection: "
  getLine >>= return . head

doSelection :: Menu -> Char -> IO ()
doSelection menu sel = do
  case Map.lookup sel (items menu) of
    Just item -> action item
    Nothing   -> error "call to a non-existant menu item"

isSelection :: Menu -> Char -> Bool
isSelection menu sel =
  Map.member sel $ items menu

-- jl
