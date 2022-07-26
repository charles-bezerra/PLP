valorFrete(V, 0):- V >= 100.
valorFrete(_, 3).

calcResultado(0, NewValor, NewQItems):- NewValor is 0, NewQItems is 0.

calcResultado(Qtd, NewValor, NewQItems):- 
    read(Preco),
    read(QtdItems),
    NewQtd is Qtd - 1,
    calcResultado(NewQtd, ParcialValor, ParcialQItems),
    NewValor is ParcialValor + Preco * QtdItems,
    NewQItems is ParcialQItems + QtdItems.

main:- 
    read(Qtd),
    calcResultado(Qtd, ParcialValor, QtdItems),
    valorFrete(ParcialValor, VFrete),
    VTotal is ParcialValor + VFrete*QtdItems,
    format('R$~2f', VTotal),
    halt.