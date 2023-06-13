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
/*Function for Question 2 a)*/
name_Topic(Topic):-course(Cno,Topic,_,_),
		option(Cno,Sno,Mark),
    	student(Sno,Name,_,_),
    	write(Name),
    	write('-->'),
    	write(Mark),nl,
    	fail.

name_Topic(_).

/*Function for Question 2 b)*/
name_Mark(Mark):-option(_,Sno,MMark),
    		MMark>=Mark,
    		student(Sno,Name,_/_/Y,_),
    		Age is 122-Y,
    		write(Name),
    		write('-->'),
    		write(Age),nl,
    		fail.

name_Mark(_).

/*Function for Question 2 c)*/
name_Price(Price):-course(Cno,_,_,PPrice),
    		PPrice>Price,
			option(Cno,Sno,_),
    		student(Sno,Name,_,_),
    		write(Name),nl,
    		fail.

name_Price(_).

/*Function for Question 2 d)*/
name_Year(Year):-
    		Y is Year-1900,
    		student(Sno,Name,_/_/Y,_),
    		option(Cno,Sno,_),
    		course(Cno,Option,_,_),
    		write(Name),
    		write('-->'),
    		write(Option),nl,
    		fail.

name_Year(_).

go:-continue.

continue:-	write('---------------------'),nl,
		write('---------------------'),nl,
		write('--                 --'),nl,
		write('--                 --'),nl,
		write('--      The        --'),nl,
		write('--    Program      --'),nl,
		write('--                 --'),nl,
		write('--                 --'),nl,
		write('---------------------'),nl,
		write('---------------------'),nl,nl,
		write('1. Student marks'),nl,
		write('2. Students in course'),nl,
		write('3. Student name and mark'),nl,
    	write('4. Student name and age who got an A'),nl,
   		write('5. Students paying more than 300'),nl,
    	write('6. Courses by Students born in specific year'),nl,
    	write('7. To EXIT'),nl,nl,
		write('Select an option'),
		read(Option),
		option(Option).

option(1):-	write('Enter Student name: '),
		read(Student),
		student(_,Student,_,_),
		student_marks(Student),
		continue.

option(1):-	write('NO OUTPUT'),
		continue.

option(2):-	write('Enter Course name: '),
		read(Course),
		course(_,Course,_,_),
		students_in_course(Course),
		continue.

option(2):-	write('NO OUTPUT'),
		continue.

/*Question 2 a) */
/*If you input prolog , the program gives the following answers:
 * bjork-->55
	mike_tyson-->65*/
option(3):-	write('Enter Course name: '),
		read(Topic),
    	course(_,Topic,_,_),%Testing if Topic exists
    	name_Topic(Topic),
		continue.
		
option(3):-	write('NO OUTPUT'),
		continue.

/*Question 2 b) */
/*The program gives the following answers:
 * celine_dion-->46
	mark_morison-->45*/
option(4):- Mark is 80,
    		name_Mark(Mark),	
			continue.
		
option(4):-	write('NO OUTPUT'),
		continue.

/*Question 2 c) */
/*The program gives the following answers:
 * mark_morison
	celine_dion*/
option(5):-	Price is 300,
    		name_Price(Price),
			continue.
		
option(5):-	write('NO OUTPUT'),
		continue.

/*Question 2 d) */
/*If you input 1976 , the program gives the following answers:
 * liam_gallagher-->pascal
celine_dion-->java
celine_dion-->pascal
celine_dion-->logic*/
option(6):- write('Enter Year: '),
			read(Year),
    		Y is Year-1900,
    		student(_,_,_/_/Y,_),
        	name_Year(Year),
			continue.
		
option(6):-	write('NO OUTPUT'),
		continue.

option(7):-	
	       write('Program terminating - thanks you.'),nl.

option(_):- write('*****************'),nl,
		write('* WRONG INPUT *'),nl,
		write('*****************'),nl,
		continue.

/*Question 1 
 * Program was tested multiple times, to make sure it runs correctly*/

/*Question 2 e)
 * Yes, it is possible since we know all the student marks*/

/*Question 2 f)
 * No, since we don't know when the student started the course and if they have some fees which they didn't pay*/

/*Question 3
 * Program was run multiple times, to make sure it runs correctly*/
