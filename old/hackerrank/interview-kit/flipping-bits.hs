import Control.Monad (forM_)
import Data.Bits (Bits (complement))
import Data.Word (Word32)

readIntList :: IO [Int]
readIntList = do map read . words <$> getLine

readWord32List :: IO [Word32]
readWord32List = do map read . words <$> getLine

solve :: Word32 -> Word32
solve = complement

main :: IO ()
main = do
  [n] <- readIntList
  forM_ [1 .. n] $ \q_itr -> do
    [xs] <- readWord32List
    print $ solve xs