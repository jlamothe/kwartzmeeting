module Main where

import Meeting
import Menu

main = getMeeting >>= doMenu . mainMenu

mainMenu :: Meeting -> Menu
mainMenu = undefined

-- jl
