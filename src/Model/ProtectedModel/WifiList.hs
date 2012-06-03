-- | This module holds the functions to access and modify the project name
-- in a reactive model.
module Model.ProtectedModel.WifiList
   ( getWifiList
   , addWifi
   , clearWifiList
   )
  where

-- Internal imports
import Model.ProtectedModel.ProtectedModelInternals
import qualified Model.ReactiveModel as RM

addWifi :: ProtectedModel -> (String, String) -> IO()
addWifi pm n = applyToReactiveModel pm (`RM.addWifi` n)

clearWifiList :: ProtectedModel -> IO()
clearWifiList pm = applyToReactiveModel pm RM.clearWifiList

getWifiList :: ProtectedModel -> IO [(String, String)]
getWifiList = (`onReactiveModel` RM.getWifiList)
