module Meeting.Types ( Meeting (..)
                     , DateTime (..)
                     , Location (..)
                     , Person (..)
                     , Report (..)
                     , ActionItem (..)
                     , BusinessItem (..)
                     ) where

data Meeting =
  Meeting { scheduledStart :: DateTime
          , location :: Location
          , attending :: [Person]
          , missing :: [Person]
          , callToOrder :: Maybe DateTime
          , reports :: [Report]
          , prevActionItems :: [ActionItem]
          , recurringBusiness :: [BusinessItem]
          , oldBusiness :: [(BusinessItem, Bool)]
          , newBusiness :: [(BusinessItem, Bool)]
          , adjournment :: ([Vote], Maybe DateTime)
          } deriving Show

data DateTime

instance Show DateTime where
  show _ = "<DateTime>"

data Location

instance Show Location where
  show _ = "<Location>"

data Person

instance Show Person where
  show _ = "<Person>"

data Report

instance Show Report where
  show _ = "<Report>"

data ActionItem

instance Show ActionItem where
  show _ = "<ActionItem>"

data BusinessItem

instance Show BusinessItem where
  show _ = "<BusinessItem>"

data Vote

instance Show Vote where
  show _ = "<Vote>"

-- jl
