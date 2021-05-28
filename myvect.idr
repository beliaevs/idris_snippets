data MyVect: Nat -> Type -> Type where
    MyNil : MyVect Z a
    (::) : a -> MyVect k a -> MyVect (S k) a
    

(++) : MyVect k a -> MyVect n a -> MyVect (k+n) a 
(++) MyNil ys = ys
(++) (a :: xs) ys = a :: (xs ++ ys)

