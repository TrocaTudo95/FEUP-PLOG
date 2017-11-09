main_menu:-
write('\33\[2J'),
nl,nl,
write(' ______________________________________________________________________________ '),nl,
write('|                                                                              |'),nl,
write('|                                                                              |'),nl,
write('|                                                                              |'),nl,
write('|               _____                                ____        _ _           |'),nl,
write('|              / ____|                              |  _ \\      | | |          |'),nl,
write('|             | |      __ _ _ __ ___  _ __    ___   | |_) | ___ | | | ___      |'),nl,
write('|             | |     / _  |  _   _ \\|  _ \\  / _ \\  |  _ < / _\\ | | |/ _ \\     |'),nl,
write('|             | |___ | (_| | | | | | | |_) || (_) | | |_) |  __/| | | (_) |    |'),nl,
write('|              \\_____ \\ ___|_| |_| |_|  __/ \\ ___/  |____/ \\___ |_|_|\\___/     |'),nl,
write('|                                    | |                                       |'),nl,
write('|                                    |_|                                       |'),nl,
write('|                                                                              |'),nl,
write('|                              1 - Player vs Player                            |'),nl,
write('|                              2 - Player vs CPU                               |'),nl,
write('|                              3 - CPU vs CPU                                  |'),nl,
write('|                              4 - How To Play                                 |'),nl,
write('|                              5 - Exit Game                                   |'),nl,
write('|                                                                              |'),nl,
write('|                                                                              |'),nl,
write('|______________________________________________________________________________|'),nl,
nl,nl,
write('Please choose an option: '),
read(R),
R<6,
menu(R).


menu(X):-
  X==1,
  write('\33\[2J'),
  nl,
  write('        Player BLUE_RED vs Player YELLOW_GREEN '),
  nl,nl,
  initialize_board(Board),
  initialize_players(Player1, Player2),
  display_players(Player1, Player2),
  display_board(Board),
  game(Board, Player1, Player2, 1).
