/* student(student no. , name, dob, sex) */

student(s01,liam_gallagher,01/05/76,m).
student(s02,brandy,15/08/79,f).
student(s03,mariah_carey,28/11/78,f).
student(s04,mark_morison,06/05/77,m).
student(s05,celine_dion,01/04/76,f).
student(s06,marco_masini,18/04/74,m).
student(s07,bjork,17/01/77,f).
student(s08,cher,30/20/48,f).
student(s09,mike_tyson,09/02/74,m).
student(s10,damon_hill,05/12/75,m).


/* course(course no. , title, hours, price) */

course(c01,prolog,70,200).
course(c02,java,100,400).
course(c03,cobol,120,250).
course(c04,pascal,60,200).
course(c05,c,90,250).
course(c06,html,20,100).
course(c07,logic,50,150).
course(c08,graphics,65,180).


/* option(course no. , student no. , marks) */

option(c03,s02,45).
option(c02,s04,35).
option(c05,s03,65).
option(c01,s07,55).
option(c02,s05,50).
option(c01,s09,65).
option(c07,s10,55).
option(c03,s04,40).
option(c08,s07,45).
option(c04,s05,55).
option(c05,s02,65).
option(c06,s03,60).
option(c07,s05,80).
option(c08,s06,65).
option(c04,s04,85).
option(c04,s01,75).

student_options(Student_Name,Option_Name):-		
				student(Sno,Student_Name,_,_),
				option(Cno,Sno,_),
				course(Cno,Option_Name,_,_).

students_in_course(Course):-  	course(Cno,Course,_,_),
				option(Cno,Sno,_),
				student(Sno,Name,_,_),
				write(Name),nl,
				fail.

students_in_course(_).

student_marks(Student):-	write('Marks for student '),
				write(Student),nl,
				student(Sno,Student,_,_),
				option(Cno,Sno,Mark),
				course(Cno,Cname,_,_),
				write(Cname),
				write(' --> '),
				write(Mark),nl,
				fail.
student_marks(_).


/*Question 1*/
/*a) Male students: liam_gallagher,mark_morison,marco_masini,mike_tyson,damon_hill */
/*?-student_male. or ?-student(_,Student,_,m).*/
student_male:-
    student(_,Student,_,m),
    write(Student),
    nl.


/*b)female students taking the course:
 * bjork-->prolog
 * celine_dion-->java
 * brandy-->cobol
 * celine_dion-->pascal
 * mariah_carey-->c
 * brandy-->c
 * mariah_carey-->html
 * celine_dion-->logic
 * bjork-->graphics
*/

/*?-female_course. 
 * or 
 *?-student(_,Name,_,f), student_options(Name,Option).*/
female_course:-
    course(Cno,Courses,_,_),
    option(Cno,Sno,_),
	student(Sno,Name,_,f),
	write(Name --> Courses),
    nl.


/*c)date of births of students taking graphical:17/1/77 , 18/4/74*/
/*?-dob_graphical.
 * or
 *?-student(_,Name,DOB,_), student_options(Name,graphics). */
dob_graphical:-
    course(Cno,graphics,_,_),
    option(Cno,Sno,_),
	student(Sno,_,DOB,_),
	write(DOB),
    nl.



/*Question 2 & 3*/
/*a)Student names and marks for topic*/
student_nmarks(Topic):-
    course(Cno,Topic,_,_),
    option(Cno,Sno,Mark),
	student(Sno,Name,_,_),
	write(Name--> Mark),
    nl.
/*Testing:
 * Topic is graphics:
 * ?-student_nmarks(graphics).
 * bjork-->45
 * marco_masini-->65
 * */	


/*b)Name and age of students who got an A*/
nage_mark(Mark):-
    option(_,Sno,Smark),
	student(Sno,Name,DOB,_),
    Smark>=Mark,
    _/_/Y=DOB,
    Y2 = Y+1900,
    get_time(CurrentDate), 
    format_time(atom(Today), '%Y', CurrentDate),
    atom_number(Today, CurrentYear),
    Age is CurrentYear-Y2,
	write(Name--> Age),
    nl.
/*Testing:
 * ?-nage_mark(80).
 * celine_dion-->46
 * mark_morison-->45
 * */	


/*c)Students paying 300 for course*/
student_pay(Amount):-
    course(Cno,_,_,Price),
    option(Cno,Sno,_),
	student(Sno,Name,_,_),
    Price>Amount,
	write(Name),
    nl.
/*Testing:
 * ?-student_pay(300).
 * mark_morison
 * celine_dion
*/

/*d)Courses taken by students who were born before 1975*/
course_date(Year):-
    course(Cno,Title,_,_),
    option(Cno,Sno,_),
	student(Sno,_,DOB,_),
    _/_/Y=DOB,
    Y2=Y+1900,
    Y2<Year,
	write(Title),
    nl.
/*Testing:
 * ?-course_date(1975).
 * prolog
 * graphics
*/







