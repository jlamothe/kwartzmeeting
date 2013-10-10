module Menu ( Menu (..)
            , Item (..)
            , doMenu
            ) where

import Menu.Types

doMenu :: Menu -> IO ()
doMenu menu = do
  putStr $ show menu
  sel <- prompt
  if isSelection menu sel
    then doSelection menu sel
    else do
    putStrLn "Invalid selection."
    doMenu menu

prompt :: IO Char
prompt = do
  putStr "\nPlease make your selection: "
  getLine >>= return . head

doSelection :: Menu -> Char -> IO ()
doSelection = undefined

isSelection :: Menu -> Char -> Bool
isSelection = undefined

-- jl
