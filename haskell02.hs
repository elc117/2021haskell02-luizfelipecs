-- Prática 02 de Haskell
-- Nome: Luiz Felipe Cavalheiro 

import Haskell02warmup

--
ehFebre :: Float -> Bool
ehFebre t = t > 37.8

comFebre :: [Float] -> [Float]
comFebre cf = filter ehFebre cf

--
comFebre' :: [Float] -> [Float]
comFebre' lf = filter (\x -> x > 37.8) lf

--
itemize :: [String] -> [String]
itemize st = map (\s -> "<li>" ++ s ++ "</li>") st

--
circleArea :: Float -> Float
circleArea r = 2*pi*r^2

bigCircles :: Float -> [Float] -> [Float]
bigCircles num lc = filter (\x -> circleArea x > num) lc

--
quarentena :: [(String,Float)] -> [(String,Float)]
quarentena tmp = filter (\(_,t) -> ehFebre t) tmp

--
idadesEm :: [Int] -> Int -> [Int]
idadesEm ano ref = map(\x -> ref - x) ano

--
changeNames :: [String] -> [String]
changeNames list = map (\nome -> if head nome == 'A' then "Super " ++ nome else nome) list 

--
onlyShorts :: [String] -> [String]
onlyShorts os = filter (\x -> length x < 5) os