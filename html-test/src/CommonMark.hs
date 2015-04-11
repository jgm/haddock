{-|md
CommonMark in Haddock
---------------------

This module demonstrates CommonMark comment syntax.

1. A list
   - an unordered sublist

     with a second paragraph
   - another item in the same sublist

2. Another list item

``` haskell
this `is` a "code block" >>= putStrLn
```

    So is this.

You can have code examples as usual in haddock. These are
automatically recognized if they begin with `>>> `.

```
>>> fib 5
5
>>> fib 10
55
```

    >>> fib 10
    55

Example with an import:

    >>> import Data.Char
    >>> isSpace 'a'
    False

    >>> putStrLn "foo\n\nbar"
    foo

    bar

Here's a [link to the CommonMark spec](http://spec.commonmark.org)
and an autolink: <http://spec.commonmark.org>.

----

Raw <a href="foobar">HTML</a> and horizontal rules are just ignored,
as they have no haddock equivalent.

> Block quotes are treated as regular paragraphs.
-}
module CommonMark where

data A = A

other :: Int
other = 2

-- |md
-- Here is a CommonMark description of `test2`.
-- A code example:
--
--    test2 == False
test2 :: Bool
test2 = False

-- | This comment does not begin with `md`, so it is processed
-- as regular /haddock markup/, not *CommonMark*.  So we can
-- talk about 'X', for example, and this will be made into
-- a link.
data X = X -- ^ Doc for consructor
