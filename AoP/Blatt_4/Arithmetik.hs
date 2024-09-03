


data Ausdruck = Konstante Integer
    |Variable String
    |Summe Ausdruck Ausdruck
    |Differenz Ausdruck Ausdruck
    |Produkt Ausdruck Ausdruck
    |Quotient Ausdruck Ausdruck
    deriving (Show)

<<<<<<< HEAD
=======
<<<<<<< HEAD
=======

>>>>>>> 03228944d81073dcd6065edf59aa9266d8b88b0c
--3
>>>>>>> refs/remotes/origin/master
ausdruckNachString :: Ausdruck -> String
ausdruckNachString (Konstante n) = show n
ausdruckNachString (Variable v) = v
ausdruckNachString (Summe e1 e2) = "(" ++ ausdruckNachString e1 ++ " + " ++ ausdruckNachString e2 ++ ")"
ausdruckNachString (Differenz e1 e2) = "(" ++ ausdruckNachString e1 ++ " - " ++ ausdruckNachString e2++ ")"
ausdruckNachString (Produkt e1 e2) = "(" ++ ausdruckNachString e1 ++ " * " ++ ausdruckNachString e2 ++ ")"
ausdruckNachString (Quotient e1 e2) = "(" ++ ausdruckNachString e1 ++ " / " ++ ausdruckNachString e2 ++ ")"
--Hier werden die veschiedenen Funktionen angegeben, diese brauch man für die verschiedenen Fälle

<<<<<<< HEAD
=======
<<<<<<< HEAD
--4
belegungVonVariable :: String -> [(String, Integer)] -> Integer
belegungVonVariable a [] = error (a ++ " ist nicht deffiniert") --Abruchsfunktion, kommt auto., wenn alle Tupel überprüft wurden und kein Element in der Liste übrig bleibt
belegungVonVariable a ((b, c): xs)
    | a == b = c --überprüft ob der String aus der Eingabe sich mit dem aus dem Tupel gleicht, wenn ja wird der zugehörige Int ausgegeben 
    | a /= b = belegungVonVariable a xs --ist da um in der Liste vorranzuschreiten
=======


--4
>>>>>>> refs/remotes/origin/master
belegungVonVariable :: String -> [(String, Integer)] -> Integer 
belegungVonVariable a [] = error (a ++ " ist nicht deffiniert") --Abruchsfunktion, kommt auto., wenn alle Tupel überprüft wurden und kein Element in der Liste übrig bleibt
belegungVonVariable a ((b, c): xs)
    | (a == b) = c --überprüft ob der String aus der Eingabe sich mit dem aus dem Tupel gleicht, wenn ja wird der zugehörige Int ausgegeben 
<<<<<<< HEAD
    | (a /= b) = (belegungVonVariable a xs) --ist da um in der Liste vorranzuschreiten 
=======
    | (a /= b) = (belegungVonVariable a xs) --ist da um in der Liste vorranzuschreiten
    
--5
auswerten
>>>>>>> 03228944d81073dcd6065edf59aa9266d8b88b0c
>>>>>>> refs/remotes/origin/master
