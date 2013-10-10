module Main where

import System.IO

import qualified Meeting
import Meeting (Meeting)
import qualified Menu
import Menu (Menu)

main = do
  hSetBuffering stdout NoBuffering
  tryMeeting <- Meeting.get
  case tryMeeting of
    Just meeting -> Menu.exec $ mainMenu meeting
    Nothing      -> return ()

mainMenu :: Meeting -> Menu
mainMenu = undefined

-- jl
