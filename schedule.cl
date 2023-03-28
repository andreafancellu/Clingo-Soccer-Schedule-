% Squadre di serie A e città
team(atalanta;bologna;cremonese;esmpoli;fiorentina;verona;inter;juve;lazio;lecce).
team(milan;monza;napoli;roma;salernitana;sampdoria;sassuolo;spezia;torino;udinese).

in(atalanta, bergamo_).
in(bologna, bologna_).
in(cremonese, cremona_).
in(empoli, empoli_).
in(fiorentina, firenze_).
in(verona, verona_).
in(inter, milano_).
in(juve, rivoli_).
in(lazio, frosinone_).
in(lecce, lecce_).
in(milan, milano_).
in(monza, monza_).
in(napoli, napoli_).
in(roma, roma_).
in(salernitana, salerno_).
in(sampdoria, genova_).
in(sassuolo, sassuolo_).
in(spezia, laspezia_).
in(torino, torino_).
in(udinese, udine_).

giornataAndata(1..19).
giornataRitorno(20..38).

home(H,G):- match(H,A,G).
away(A,G):- match(H,A,G).

0 {match(H, A, G): team(A), H <> A, not away(H,G)} 1 :- team(H), giornataAndata(G).
0 {match(H, A, G): team(H), H <> A, not home(A,G)} 1 :- team(A), giornataAndata(G).

10 {match(H, A, G): team(H), team(A), H <> A} 10 :- giornataAndata(G).

0 {match(H, A, G): team(A), H <> A, not away(H,G)} 1 :- team(H), giornataRitorno(G).
0 {match(H, A, G): team(H), H <> A, not home(A,G)} 1 :- team(A), giornataRitorno(G).

10 {match(H, A, G): team(H), team(A), H <> A} 10 :- giornataRitorno(G).

:- match(H, A, G1), giornataAndata(G1), match(H,A,G2), giornataRitorno(G2).
:- match(H, A, G1), giornataAndata(G1), match(H, A, G2), giornataAndata(G2), G1 <> G2.
:- match(H, A, G1), giornataRitorno(G1), match(H,A,G2), giornataRitorno(G2), G1 <> G2.
:- match(H1, _, G), match(H2, _, G), H1 <> H2, in(H1, C), in(H2, C).
:- match(H, _, G), match(_, H, G).



% calendario inter per semplificare i calcoli
match(lecce, inter, 1). 
match(inter, spezia, 2).  
match(lazio, inter, 3). 
match(inter, cremonese, 4).   
match(milan, inter, 5). 
match(inter, torino, 6).     
match(udinese, inter, 7).   
match(inter, roma, 8).     
match(sassuolo, inter, 9).    
match(inter, salernitana, 10).
match(fiorentina, inter, 11).   
match(inter, sampdoria, 12).  
match(juve, inter, 13).    
match(inter, bologna,14).
match(atalanta, inter, 15).   
match(inter, napoli, 16).   
match(monza, inter, 17).      
match(inter, verona, 18).      
match(inter, empoli, 19).    
match(cremonese, inter, 20).
match(inter, milan, 21).     
match(sampdoria, inter, 22).     
match(inter, udinese, 23).    
match(bologna, inter, 24).
match(inter, lecce, 25).
match(spezia, inter, 26).
match(inter, juve, 27).
match(inter, fiorentina, 28).
match(salernitana, inter, 29).
match(inter, monza, 30).
match(empoli, inter, 31).
match(inter, lazio, 32).
match(verona, inter, 33).
match(roma, inter, 34).
match(inter, sassuolo, 35).
match(napoli, inter, 36).
match(inter, atalanta, 37).
match(torino, inter, 38).

% calendario milan per semplificare i calcoli
% match(milan, udinese, 1).
% match(atalanta, milan, 2).
% match(milan, bologna, 3).
% match(sassuolo, milan, 4).
%% match(milan, inter, 5).
% match(sampdoria, milan, 6).
% match(milan, napoli, 7).
% match(empoli, milan, 8).
% match(milan, juve, 9).
% match(verona, milan, 10).
% match(milan, monza, 11).
% match(torino, milan, 12).
% match(milan, spezia, 13).
% match(cremonese, milan, 14).
% match(milan, fiorentina, 15).
% match(salernitana, milan, 16).
% match(milan, roma, 17).
% match(lecce, milan, 18).
% match(lazio, milan, 19).
% match(milan, sassuolo, 20).
% match(inter, milan, 21).
% match(milan, torino, 22).
% match(monza, milan, 23).
% match(milan, atalanta, 24).
% match(fiorentina, milan, 25).
% match(milan, salernitana, 26).
% match(udinese, milan, 27).
% match(napoli, milan, 28).
% match(milan, empoli, 29).
% match(bologna, milan, 30).
% match(milan, lecce, 31).
% match(roma, milan, 32).
% match(milan, cremonese, 33).
% match(milan, lazio, 34).
% match(spezia, milan, 35).
% match(milan, sampdoria, 36).
% match(juve, milan, 37).
% match(milan, verona, 38).



#show match/3.