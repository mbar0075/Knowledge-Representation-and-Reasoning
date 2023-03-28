/*Exercise 4*/
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

works_hard(helen).
works_hard(mark).
works_hard(frank).

clever_girl(Girl):- 
	student(Girl),
	female(Girl),
	clever(Girl).

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


/*Question 1*/
/*a) Mark will not get a first since he is not clever ?-get_first(mark).*/
/*b) Helen will get a first ?-get_first(helen).*/
/*c) Steve, helen, pauline, mark and frank pass ?-pass(A).*/


/*Question 2*/
second_class(Student):-
    pass(Student),
    not(get_first(Student)).


/*Question 3*/
/*The people who will get second class are steve,pauline,mark and frank*/
/*?-second_class(A).*/


/*Question 4*/
/*a)*/
clever_boy(Boy):-
    student(Boy),
    male(Boy),
    clever(Boy).
/*steve is a clever boy ?-clever_boy(A).*/

/*b)*/
what_a_pity_student(Student):-
    student(Student),
    clever(Student),
    not(works_hard(Student)).
/*steve and pauline ?-what_a_pity_student(Student).*/


/*Question 5*/
/*a) Registration range rover*/
/*Registration number uje777 ?-red_rangerover.*/
red_rangerover:-
    car_make(X,rangerover),
    car(X,_,_,A,red,_),
    write(A),
    nl.
    
/*b) Year of manufacturer of blue cars*/
/*1990,1996,1991,1995,1997,1998 ?-year_bluecars.*/
year_bluecars:-
    car(_,_,_,_,blue,A),
    write(A),
    nl.

/*c) The make of the yelow beetle*/
/*volkswagen ?-make_yellowbeetle.*/
make_yellowbeetle:-
    car(A,_,beetle,_,yellow,_),
    car_make(A,B),
    write(B),
    nl.

/*d) The type of cars manufactured after 1997*/
/*hatchback and off_road ?-manufacture_1997.*/
manufacture_1997:-
    car(_,A,_,_,_,B),
    B>1997,
    car_type(A,C),
    write(C),
    nl.


/* make(make reference, car make) */
car_make(01,ford).
car_make(02,rangerover).
car_make(03,toyota).
car_make(04,mazda).
car_make(05,daihatsu).
car_make(06,volkswagen).
car_make(07,fiat).

/* type(type reference, type of car) */
car_type(01,hatchback).
car_type(02,van).
car_type(03,off_road).

/* car(make ref, type ref, model, reg no, colour, year) */
car(01,01,escort,fsd127,blue,1990).
car(07,01,uno,tre333,blue,1996). 
car(02,03,discovery,uje777,red,1995).
car(03,01,starlet,uij236,green,1991).
car(01,02,transit,ski432,green,1991).
car(07,01,bravo,juy677,red,1998).
car(03,03,hilux,kil989,blue,1991).
car(04,01,three2threeF,kul101,blue,1995).
car(05,01,charade,ill666,white,1991).
car(06,01,polo,ass001,blue,1997).
car(02,03,freelander,hyt456,blue,1998).
car(06,01,beetle,our127,yellow,1985).
car(03,02,hiace,far626,white,1992).
car(07,01,punto,jdu736,white,1996).

