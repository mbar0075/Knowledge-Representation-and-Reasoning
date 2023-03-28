/*Exercise 2*/
student(mark).
student(steve).
student(helen).
student(sylvia).
student(pauline).
student(frank).

female(helen).
female(sylvia).
female(pauline).

male(mark).
male(steve).
male(frank).

clever(helen).
clever(steve).
clever(pauline).
clever(steve).

works_hard(helen).
works_hard(mark).
works_hard(frank).

clever_girl(Girl):- 
	student(Girl),
	female(Girl),
	clever(Girl).

/*Question 1*/
clever_boy(Boy):- 
	student(Boy),
	male(Boy),
	clever(Boy).


get_first(Student):-
	student(Student),
	clever(Student),
	works_hard(Student).

pass(Student):-
	student(Student),
	clever(Student).

pass(Student):-
	student(Student),
	works_hard(Student).


pass(Student):-
	student(Student),
	clever(Student);
	student(Student),
	works_hard(Student).



parent_of(mary,peter).      parent_of(james,peter).
parent_of(mary,helen).      parent_of(james,helen).
parent_of(mary,lydia).      parent_of(james,lydia).
parent_of(marion,mary).     parent_of(tony,mary).
parent_of(marion,mark).     parent_of(tony,mark).

female(mary).               female(helen).
female(lydia).              female(marion).

male(peter).                male(james).
male(tony).                 male(mark).

/*Question 3*/
/*a)*/
siblings(A,B):-
	parent_of(C,A),
	parent_of(C,B).

/*b)*/
grandMother(Nanna,Grandchild):-
	parent_of(Nanna,Parent),
	parent_of(Parent,Grandchild),
    female(Nanna).

/*c)*/
sisters(Sister1,Sister2):-
	siblings(Sister1,Sister2),
    female(Sister1),
	female(Sister2).

/*d)*/
grandchild(Grandchild,Grandparent):-
	parent_of(Grandparent,Parent),
	parent_of(Parent,Grandchild).

/*e)*/
father(Dad,Child):-
	parent_of(Dad,Child),
	male(Dad).

