--1)
elevaQuad :: [Int]->[Int]
elevaQuad [] = []
elevaQuad listInt = (head listInt)^2 : elevaQuad(tail listInt)

--2)
addSr :: [String]->[String]
addSr [] = []
addSr listName = ("Sr." ++(head listName)) : addSr(tail listName)

--3)
contaEspacos :: String->Int
contaEspacos [] = 0
contaEspacos str = if (head str) == ' ' then 1 + contaEspacos(tail str) else contaEspacos(tail str)

--4)
calcVal :: [Double]->[Double]
calcVal [] = []
calcVal listNumbers = ((\ n-> 3*n^2 + 2/n + 1)) (head listNumbers) : calcVal(tail listNumbers)

--5)
selectNeg :: [Int]->[Int]
selectNeg [] = []
selectNeg listaNum = if head listaNum < 0 then (head listaNum) : selectNeg(tail listaNum) else selectNeg(tail listaNum)

--6)
semVogaisNR :: String->String
semVogaisNR [] = []
semVogaisNR str = filter(\ n-> if elem n "AEIOUaeiou" then False else True) str

--7)
semVogaisR :: String->String
semVogaisR [] = []
semVogaisR str = if (((head str) /= 'a') && ((head str) /= 'e') && ((head str) /= 'i') && ((head str) /= 'o') && ((head str) /= 'u')) then (head str) : semVogaisR(tail str) else semVogaisR(tail str)

--8)
semChar :: String->String
semChar [] = []
semChar str = map(\n -> if n /= ' ' then '-' else n) str

--9)
semCharR :: String->String
semCharR [] = []
semCharR str = if (head str) /= ' ' then '-' : semCharR(tail str) else ' ' : semCharR(tail str)

--10)
charFound :: Char->String->Bool
charFound _ "" = False
charFound c str = (if (head str) == c then True else charFound c (tail str))

--11)
translate :: [(Float, Float)]->[(Float, Float)]
translate [] = []
translate x = (fst(head x) + 2, snd(head x) + 2) : translate(tail x)

--12)
funcMultR :: [Int]->[Int]->[Int]
funcMultR [][] = []
funcMultR lis1 lis2 = ((head lis1)*(head lis2)) : funcMultR(tail lis1) (tail lis2)

--13)
funcMultNR :: [Int]->[Int]->[Int]
funcMultNR [][] = []
funcMultNR lis1 lis2 = zipWith (*) lis1 lis2

--14)
calculaQuadAteN :: Int->[(Int,Int)]
calculaQuadAteN n = calculaTudo 1 n

calculaTudo :: Int->Int->[(Int, Int)]
calculaTudo 1 0 = []
calculaTudo x y = if (x <= y) then (x, x^2) : calculaTudo(x+1)(y) else []