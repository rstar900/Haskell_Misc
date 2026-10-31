-- There is one module per source file in Haskell
module Gold where

-- The golden ratio
phi :: Double -- Type annotation (type signature) (optional)
phi = (sqrt 5 + 1) / 2 -- Assign it a value via '=' i.e. equation, can also have optional type annotation

-- Define a function taking a single Double value and returning a Double value as well
polynomial :: Double -> Double -- Annotate (optional)
polynomial x = x^2 - x - 1 --Define

-- Another function which applies polynomial function twice
f x = polynomial (polynomial x)

--  The executable part of the code via do syntax and IO Monad
main = do
    print (polynomial phi)
    print (f phi)