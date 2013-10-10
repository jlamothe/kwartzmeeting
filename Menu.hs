module Menu ( Menu (..)
            , Item (..)
            , exec
            ) where

import Menu.Types

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
doSelection = undefined

isSelection :: Menu -> Char -> Bool
isSelection = undefined

-- jl
