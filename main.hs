imc::Double -> Double -> String
imc p a 
    |p /(a*a) < 18.5 = "Abaixo do peso"
    |p /(a*a) >= 18.5 && p /(a*a) <= 25 = "Peso normal"
    |p /(a*a) >= 25 && p/a*a <= 30 = "Acima do peso"
    |p /(a*a) > 30 = "Obeso"

    
main::IO()
main = do

putStrLn "Peso (em Kg): "
p <- readLn

putStrLn "Altura (em m): "
a <- readLn

putStrLn("IMC: "++ show(imc p a))