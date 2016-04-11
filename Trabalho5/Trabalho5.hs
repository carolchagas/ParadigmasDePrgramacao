--1)
addSuffix :: String -> [String] -> [String]
addSuffix str lista = [x ++ str | x <- lista]


--2)
countShorts :: [String] -> Int
countShorts [] = 0
countShorts listaPalavras = if (length(head listaPalavras) < 5) then 1 + countShorts(tail listaPalavras) else countShorts(tail listaPalavras)


--3)
countShortsSR :: [String] -> Int
countShortsSR listaPalavras = length[x | x <- listaPalavras, length(x) < 5]


--4)
ciclo :: Int -> [Int] -> [Int]
ciclo n lista = if n /= 0 then lista ++ ciclo (n-1) lista else []


--5)
numera :: [String] -> [(Int,String)]
numera [] = []
numera listaStr = aux 1 listaStr

aux :: Int -> [String] -> [(Int, String)]
aux _ [] = []
aux n lisStr = (n, (head lisStr)) : aux (n+1) (tail lisStr)


--6)
--a) O resultado da expressão será uma lista de tuplas com x assumindo apenas valores pares entre 1 e 5 
--   e y assumindo apenas valores ímpares entre o valor atual de x mais 1 (x+1) e 6. Saída: [(2,3), (2,5), (4,5)].
--b) O resultado é uma lista de Strings, onde cada uma é formada pela concatenação das palavras de a com b, sendo concatenado na ordem:
--   primeira palavra de a com a primeira de b, primeira de a com a segunda b, segunda de a com primeira de b e segunda de a com segunda de b.
--c) O resultado da expressão é uma String na qual ao invés de apresentar as vogais da palavra atribuída para a, substitui-se as mesmas por traços, mostrando apenas
--   as consoantes da palavra e os traços nos respectivos locais das vogais.


--7)
crossProduct :: [Int] -> [Int] -> [(Int,Int)]
crossProduct [] _ = []
crossProduct _ [] = []
crossProduct listaInt lis = (pairWithAll (head listaInt) lis) ++ crossProduct (tail listaInt) lis

pairWithAll :: Int -> [Int] -> [(Int,Int)]
pairWithAll _ [] = []
pairWithAll n lista = (n, head lista) : pairWithAll n (tail lista)


--8)
genRects :: Int -> (Int,Int) -> [(Float,Float,Float,Float)]
genRects n (ax, by) = [((fromIntegral ax) + x, fromIntegral by, 5.0, 5.0) | x <- [0.0, 5.0..5.0 * (fromIntegral (n-1))]]


--9)
func :: [(Int,Int)] -> ([Int],[Int])
func [] = ([],[])
func lista = ( fst(head lista) : fst(func (tail lista)), snd(head lista) : snd(func (tail lista)))


--10)
funcTuplaLC :: [(Int,Int)] -> ([Int],[Int])
funcTuplaLC lista = ([fst x | x <- lista], [snd x | x <- lista])


--11)
funcTuplaZW :: [(Int,Int)] -> ([Int],[Int])
funcTuplaZW lista = (map fst lista, map snd lista)

--12)
