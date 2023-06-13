find_total(0,[]).

find_total(Total,[H|T]):-	find_total(SubT,T),
				Total is H + SubT.

find_average(0,[]).

find_average(Average,List):-
		find_total(Total,List),
		find_number(Number,List),
		Average is Total/Number.

find_number(0,[]).

find_number(N,[ _ | T ]):-
		find_number(Nn,T),
		N is Nn + 1.


find_max(X,[X]).

find_max(H,[H|T]):-		find_max(Max,T),
				H > Max.

find_max(Max,[H|T]):-	find_max(Max,T),
				H =< Max.

/*Question 1*/
/*a) find_total(T,["a","b","c"]). T=294 , The function adds the decimal equivalent 
 * of the ascii characters together, by chopping off the head of the list and 
 * adding said value to the Total variable*/

/*b) find_max(T,[]). false is returned since the list is empty */

/*c) find_average(A,[1,"b",3]). A=34 as b has the ascii value of 98 , and thus, the
 * average of (1+98+3 )/3 is 34*/

/*Question 2*/
/*Base Case, returns 1 if empty list*/
prod([],1).
/*Recursive Case multiplies head by PP*/
prod([H|T], Product):-prod(T,PP),
    				Product is H*PP.

/*prod([12,18,6],P). gives the following answer: P = 1296*/

/*Question3*/
min([X],X).

min([H|T],H):-min(T,M),
    		H<M.

min([H|T],M):-min(T,M),
    		H>=M.


