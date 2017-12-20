:- include('Constraints.pl').

%puzzle(numero, dimensao, numeros de fora(linha numero), numeros de fora(coluna numero), numeros de dentro(linha coluna numero))
puzzle(1, 6, [2-2, 5-1], [3-4], [5-2-6, 3-5-6]).

%N é o número do puzzle
main(N):-
  puzzle(N, Size, HorizontalConstrains, VerticalConstrains, [IRow1-ICol1-INum1, IRow2-ICol2-INum2]),
  define_board(Size, List),
  constrain_init_final_cells(List, Size),
  constrain_middle_cells(List, Size, IRow1, ICol1, INum1),
  constrain_middle_cells(List, Size, IRow2, ICol2, INum2),


  list_to_matrix(List,Size,Board),
  constrain_horizontal_lines(Board,HorizontalConstrains),
  constrain_vertical_lines(Board,VerticalConstrains),
  labeling([], List),
  write(Board).
