/*Exercise 3*/
parent_of(mary,peter).      parent_of(james,peter).
parent_of(mary,helen).      parent_of(james,helen).
parent_of(mary,lydia).      parent_of(james,lydia).
parent_of(marion,mary).     parent_of(tony,mary).
parent_of(marion,mark).     parent_of(tony,mark).

female(mary).               female(helen).
female(lydia).              female(marion).

male(peter).                male(james).
male(tony).                 male(mark).

/*Question 1*/
/*a) Mary's parents : marion and tony (?-parent_of(A,mary).)*/
/*b) Mary's children : peter,helen,lydia (?-parent_of(mary,B).)*/
/*c) Who is a parent : mary,james,marion,tony (?-parent_of(A,B).)*/

/*Question 2*/
/*a)*/
daughter_of(Daughter,Parent):-
    parent_of(Parent,Daughter),
    female(Daughter).

/*b)*/
son_of(Son,Parent):-
    parent_of(Parent,Son),
    male(Son).

/*c)*/
mother_of(Mother,Child):-
    parent_of(Mother,Child),
    female(Mother).

/*d)*/
brother_of(Brother,Person):-
    parent_of(Parent,Person),
    parent_of(Parent,Brother),
    male(Brother).

/*e)*/
grand_father(Grandad,Grandchild):-
	parent_of(Grandad,Parent),
	parent_of(Parent,Grandchild),
    male(Grandad).

/*f)*/
grand_daughter(Granddaughter,Grandparent):-
	parent_of(Grandparent,Parent),
	parent_of(Parent,Granddaughter),
    female(Granddaughter).

/*e)*/
uncle_of(Uncle,NephewNiece):-
	parent_of(Grandparent,Parent),
    parent_of(Grandparent,Uncle),
	parent_of(Parent,NephewNiece),
    male(Uncle).


