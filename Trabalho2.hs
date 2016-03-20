--1)
somaQuad :: Int->Int->Int
somaQuad x y = (x^2)+(y^2)


--2)
hasEqHeads :: [Int]->[Int]->Bool
hasEqHeads l1 l2 = head(l1) == head(l2)


--3)
funcStr :: [String]->[String]
funcStr listaNomes = map ("Sr. "++) listaNomes


--4)
contaEspacos :: String->Int
contaEspacos str = length(filter(==' ') str)


--5)
funcMath :: [Float]->[Float]
funcMath listaNum = map(\ n-> 3*n^2 + 2/n + 1) listaNum


--6)
funcNegativos :: [Int]->[Int]
funcNegativos listaN = filter(<0) listaN


--7)
funcBetween :: [Int]->[Int]
funcBetween listaNumber = filter(\x -> x >= 1 && x <= 100) listaNumber


--8)
funcIdades :: [Int]->[Int]
funcIdades listaIdades = filter(\x -> x < 46) listaIdades


--9)
funcPares :: [Int]->[Int]
funcPares listaPares = filter even listaPares


--10)
charFound :: Char -> String -> Bool
charFound c str =  any (== c) str


--11)
--takeWhile (> 10) [5, 9, 14, 23, 27]


--12)
fimA :: [String]->[String]
fimA namesList =  filter(\x -> last x == 'a') namesList
--fimA namesList = map(filter(last[]) namesList) namesList