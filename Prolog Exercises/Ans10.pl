push(Item,OldStack,[Item|OldStack]).

pop(H,[H|T],T).

append_to([ ],Elem,Elem).  

append_to([A|B],Second,[A|C]):-	append_to(B,Second,C).

reverse([X],[X]).

reverse([H|T],NewStack):-
		reverse(T,List),
    	append_to(List,[H],NewStack).

empty([H|_],[H]).

display_bottom([X]):-
    		write(X).

display_bottom([_|T]):-
    display_bottom(T).
