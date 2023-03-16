import Data.List

data EncodeList a = Single a | Multiple Int a
    deriving (Show)

encodeModified xs = [if (length x) == 1 then Single (head x) else Multiple (length x) (head x) | x <- group xs]

-- 模範解答はif~elseをletで後に回していた、そのほうが綺麗かも。
