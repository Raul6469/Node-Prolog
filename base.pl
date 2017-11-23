% Base de faits
% Déroulez pour voir la base de connaisance proposée : l'arbre d'une famille de Game Of Thrones.
male(tytos).
male(tywin).
male(kevan).
male(jaime).
male(tyrion).
male(robert).
male(joffrey).
male(tommen).
male(lancel).
female(dorna).
female(myrcella).
female(cersei).
female(joanna).

% relations
parent(tytos,tywin).
parent(tytos,kevan).
parent(tywin,jaime).
parent(tywin,cersei).
parent(tywin,tyrion).
parent(joanna,jaime).
parent(joanna,cersei).
parent(joanna,tyrion).
parent(cersei,joffrey).
parent(cersei,myrcella).
parent(cersei,tommen).
parent(robert,joffrey).
parent(robert,myrcella).
parent(robert,tommen).
parent(kevan,lancel).
parent(dorna,lancel).

frere(X,Y):-parent(Z,X),parent(Z,Y),male(X),male(Y),X\==Y.

ancetre1(X,Y):-parent(X,Y).
ancetre1(X,Y):-parent(Z,Y),ancetre1(X,Z).

ancetre2(X,Y):-parent(Z,Y),ancetre2(X,Z).
ancetre2(X,Y):-parent(X,Y).

ancetre3(X,Y):-parent(X,Y).
ancetre3(X,Y):-parent(X,Y),ancetre3(Y,Z).

ancetre4(X,Y):-parent(X,Y),ancetre4(Y,Z).
ancetre4(X,Y):-parent(X,Y).