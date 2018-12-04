module Test.Spine.Main (
    spineMain
  ) where

import           Control.Monad

import           System.Exit
import           System.IO

import           Prelude

spineMain :: [IO Bool] -> IO ()
spineMain tests =
  sanity >> sequence tests >>= \rs -> unless (and rs) exitFailure

sanity :: IO ()
sanity =
  hSetBuffering stdout LineBuffering >> hSetBuffering stderr LineBuffering
