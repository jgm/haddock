module CommonMark where

data A = A

other :: Int
other = 2

-- |md
-- Markdown *Doc* for [link](url) `test2`
test2 :: Bool
test2 = False

-- | Not *markdown*
data X = X -- ^ Doc for consructor

-- | Should show up on the page for both modules A and B
reExport :: Int
reExport = 1
