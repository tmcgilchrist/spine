import           Test.Spine.Main

import qualified Test.Spine.Memory as Memory

main :: IO ()
main =
  spineMain [
      Memory.tests
    ]
