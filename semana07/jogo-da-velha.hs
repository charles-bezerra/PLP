isChampion:: [String]->String->Bool
isChampion [] x = True
isChampion (v:vs) x = x == v && v == isChampion vs x

main:: IO()
main = do
    input <- getLine
    let matrix = read input :: [[String]]
    print (isChampion )