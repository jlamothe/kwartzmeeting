module Main where

import System.IO

import qualified Meeting
import Meeting (Meeting)
import qualified Menu
import Menu (Menu)

main = do
  hSetBuffering stdout NoBuffering
  Meeting.get >>= Menu.exec . mainMenu

mainMenu :: Meeting -> Menu
mainMenu = undefined

-- jl
