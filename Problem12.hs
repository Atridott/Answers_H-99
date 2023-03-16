import Data.List

data EncodedList a = Single a | Multiple Int a
    deriving (Show)

decodeModified :: [EncodedList a] -> [a]
decodeModified = concatMap decode
    where
        decode (Single x)     = [x]
        decode (Multiple n x) = replicate n x
