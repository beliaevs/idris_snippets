module Peano

data MyNat: Type where
    Z : MyNat
    S : MyNat -> MyNat

plus : MyNat -> MyNat -> MyNat
plus Z y = y
plus (S k) y = S (plus k y)

mult : MyNat -> MyNat -> MyNat
mult Z y = Z
mult (S k) y = plus y (mult k y)

