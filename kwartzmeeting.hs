module Main where

import System.IO

import Meeting
import Menu

main = do
  hSetBuffering stdout NoBuffering
  getMeeting >>= doMenu . mainMenu

mainMenu :: Meeting -> Menu
mainMenu = undefined

-- jl
