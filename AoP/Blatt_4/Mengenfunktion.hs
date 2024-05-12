{--
    Aufgabenblatt 4 - Jean-Pierre Kasperschinski
--}

-- Aufgabe 4

--1
istElement :: Int -> [Int] -> Bool
istElement _ [] = False --Abruchfunktion, bspw. wenn die Liste fertig überprüft wurde
istElement e (x:xs)
    | e == x = True --wenn e = x ist dann ist der Int in der Liste enthalten 
    | otherwise = istElement e xs --darüber geht man in der Liste vorran 


--2
istTeilmenge :: [Int] -> [Int] -> Bool
istTeilmenge [] _ = True --Eine leere Menge ist die Teilmenge aller Mengen
istTeilmenge (x:xs) (y:ys)
    | istElement x (y:ys) && istTeilmenge xs (y:ys) = True --hier wird per rekursion alle elemente miteinander vergleichen
    | otherwise = False


--3
istEchteTeilmenge :: [Int] -> [Int] -> Bool
istEchteTeilmenge [] _ = False
istEchteTeilmenge (x:xs) (y:ys)
    | istElement x (y:ys) && istTeilmenge xs (y:ys) && length (x:xs) < length (y:ys) = True --hier wurde kopiert nmit der zusatzbedingung das (y:ys) länger sein muss als (x:xs)
    | otherwise = False


--4
vereinigung :: [Int] -> [Int] -> [Int]
vereinigung (x:xs) (y:ys) = oder (x:xs) ++ (y:ys) --beide werden zusammengeführt

oder :: [Int] -> [Int] 
oder [] = []
oder (x:xs) 
    | elem x xs = oder xs --hier werden die doppelten Elemente aussortiert
    | otherwise = x : oder xs --das nächste element wird überprüft


--5
schnitt :: [Int] -> [Int] -> [Int]
schnitt [] [] = []
schnitt (x:xs) (y:ys) = und (x:xs) ++ (y:ys)

und (x:xs)
    | elem x xs = und xs --hier werden die doppelten Elemente aussortiert !!!!!111!1!!1111!1111!111!!111111
    | otherwise = x : und xs --das nächste element wird überprüft 1111!!!!!1111!111!!11!11111111
