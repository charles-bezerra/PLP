import Text.Printf

calc_altura:: Float->Float->Float->Float
calc_altura l r b = 2 * sqrt(p * (p - r) * (p - l) * (p - b)) / b
    where p = (l + r + b) / 2

menor:: Float->Float->Float
menor l r
    | l >= r = l
    | r > l = r

main:: IO()
main = do 
    a <- readLn
    b <- readLn
    c <- readLn
    
    let sideL = calc_altura b c a
    let sideR = calc_altura a c b

    let smaller = menor sideL sideR
    printf "%.2f" smaller