module Menu.Types ( Menu (..)
                  , Item (..)
                  ) where

import Data.Map (Map)
import qualified Data.Map as Map

data Menu =
  Menu { title :: String
       , items :: Map Char Item
       }

data Item =
  Item { itemDesc :: String
       , action   :: IO ()
       }

instance Show Menu where
  show menu =
    Map.foldrWithKey addItem (formatTitle menu) (items menu)
    where
      addItem k x r = r ++ [k] ++ ") " ++ show x ++ "\n"
      formatTitle m = "\n*** " ++ title m ++ " ***\n"

instance Show Item where
  show = show . itemDesc

-- jl
