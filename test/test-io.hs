import           Test.Spine.Main

import qualified Test.IO.Spine.Data as Data
import qualified Test.IO.Spine.Schema as Schema

main :: IO ()
main =
  spineMain [
      Data.tests
    , Schema.tests
    ]
