--Q11
desc::Double -> Double -> Double -> Double -> Double
desc p qa qb qc
    | qa == 1 && qb == 1 || qb == 2 = p-(10/100 *p) 
    | qa == 1 && qb == 3 = p-(15/100 *p) 
    | qa == 2 && qc == 1 = (p/2)+(15/100 *p)
    | qa == 2 && qc == 2 = p/2
    
main::IO()
main = do

putStrLn "Preço: "
p <- readLn

putStrLn "A vista(1) ou parcelado em 2x(2)? "
qa <- readLn

putStrLn "Em dinheiro(1), cheque(2) ou cartão(3)? "
qb <- readLn

putStrLn "Com(1) ou sem juros(2)? <- Se for parcelar "
qc <- readLn

putStrLn("IMC: "++ show(desc p qa qb qc))