/*Question 1*/
/*The following functions were used throughout Question 1*/

/*Function to find the largest value in a list*/
find_max([Elem],Elem).

find_max([H|T],H):-find_max(T,Max),
    		H>=Max.

find_max([H|T],Max):-find_max(T,Max),
    		H<Max.

/*Function to append to a list*/
append_to([ ],Elem,Elem).  

append_to([A|B],Second,[A|C]):-	append_to(B,Second,C).

/*Function to delete an element from list*/
delete_elem(Elem,[Elem|Final],Final).

delete_elem(Elem,[H|Tail],[H|Result]):- delete_elem(Elem,Tail,Result).

/*a)*/
descSort([],[]).

descSort(Listitems, FinalList):-
    find_max(Listitems,Max),
    delete_elem(Max,Listitems,NewList),
    descSort(NewList,TempList),
    append_to([Max],TempList,FinalList).



/*b)*/
occur(_,[],0).

occur(Elem,[Elem|T],Num):-
    occur(Elem,T,Count),
    Num is Count +1.

occur(Elem,[_|T],Num):-
    occur(Elem,T,Num).


/*c)*/
countDel(_,[],[],0).

countDel(Elem,[Elem|T],L,Num):-
    countDel(Elem,T,L,Count),
    Num is Count +1.

countDel(Elem,[H|T],L,Num):-
    countDel(Elem,T,TempList,Num),
    append_to([H],TempList,L).


/*d)*/
collCount([],[]).

collCount([H|T],FinalList):-
    countDel(H,[H|T],NewList, Num),
    collCount(NewList,TempList),
    append_to([(H,Num)],TempList,FinalList).


/*e)*/
remDup([],[]).

remDup([H|T],Ans):-
    countDel(H,[H|T],NewList,_),
    remDup(NewList,TempList),
    append_to([H],TempList,UnsortedList),
    descSort(UnsortedList,Ans).


/*Question 2*/
/*a)*/
leftPush(Item,OldDeque,[Item|OldDeque]).

/*b)*/
rightPop([Item],Item,[]).

rightPop([H|T],Item,[H|Templist]):-
    rightPop(T,Item,Templist).

/*c)*/
checkEmpty([]):-
    write("Yes").

checkEmpty(_):-
    write("No").

/*d)*/
dequeSize([],0).

dequeSize([_|T],Count):-
    dequeSize(T,Count2),
    Count is Count2+1.

/*e)*/
joinDeques([], List, List).

joinDeques([H|T], List, [H|Result]):-
           joinDeques(T,List,Result).



