--Q12
ma::Int -> Int -> Int -> Int -> String
ma na nb nc me
    |na+(nb*2)+(nc*3)+me >= 90 = "A  (APROVADO)"
    |na+(nb*2)+(nc*3)+me <90 &&  na+(nb*2)+(nc*3)+me >= 75 = "B (APROVADO)"
    |na+(nb*2)+(nc*3)+me <75 &&  na+(nb*2)+(nc*3)+me >= 60 = "C (APROVADO)"
    |na+(nb*2)+(nc*3)+me <60 &&  na+(nb*2)+(nc*3)+me >= 40 = "D (REPROVADO)"
    |na+(nb*2)+(nc*3)+me <40 = "E (REPROVADO)"
    
main::IO()
main = do

putStrLn "Nota 1: "
na <- readLn

putStrLn "Nota 2: "
nb <- readLn

putStrLn "Nota 3: "
nc <- readLn

putStrLn "Media de exercicios (numero de questões por exercicio): "
me <- readLn

putStrLn("Nota: "++ show(ma na nb nc me))