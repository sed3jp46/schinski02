--Aufgabe 4 

--4.1
data Gerade = Gerade {anstieg :: Double, spy :: Double} 
-- hier Lege ich einen Konstrukor an für den Datentypen "Gerade"

--4.2
auswerten :: Gerade -> Double -> Double
auswerten (Gerade m1 n1) x = m1 * x + n1 
-- die Funktion "auswerten" benutzt den Dateitypen "Gerade" 
--4.3
data Punkt = Punkt {xkor :: Double, ykor :: Double} deriving Show
schnittpunkt :: Gerade -> Gerade -> Punkt
schnittpunkt (Gerade m1 n1) (Gerade m2 n2) =    
    Punkt ((n1 - n2) / (m2 - m1)) (auswerten (Gerade m1 n1) ((n1 - n2) / (m2 - m1)))

 --4.4
flaecheZwischenGeraden :: Gerade -> Gerade -> Double -> Double -> Double
flaecheZwischenGeraden gerade1 gerade2 a b 
    let (xSchnittpunkt, ySchnittpunkt) = schnittpunkt gerade1 gerade2
        fx = auswerten gerade1 x
        gx = auswerten gerade2 x
        integrate f a b = (f a + f b) * (b - a) / 2
        in abs $ integrate (\x -> f x - g x) a xSchnittpunkt + integrate (\x -> g x - f x) xSchnittpunkt b

