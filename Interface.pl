display_board(Board, Size):-
  display_line2(Size), nl,
  display_columns(Board, Size, Size).

display_columns(_, _, 0).
display_columns(Board, Size, Counter):-
  Count is Counter - 1,
  display_line1(Board, Size, NewBoard), nl,
  display_line2(Size), nl,
  display_columns(NewBoard, Size, Count).

display_line1(Tail, 0, NewBoard):-
  NewBoard = Tail,
  write('|').
display_line1([H|Tail], Size, NewBoard):-
  write('| '),
  symbol(H, Symbol),
  write(Symbol),
  write(' '),
  Size1 is Size - 1,
  display_line1(Tail, Size1, NewBoard).

display_line2(0).
display_line2(Size):-
  write('----'),
  Size1 is Size - 1,
  display_line2(Size1).

symbol(0, ' ').
symbol(1, 1).
symbol(2, 2).
symbol(3, 3).
symbol(4, 4).
symbol(5, 5).
symbol(6, 6).
symbol(7, 'I').
symbol(8, 'F').
