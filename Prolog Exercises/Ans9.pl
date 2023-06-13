bubble(1,[H|T],[H|T]).

bubble(N,[H|T],[H2|[H|T2]]):-
    NN is N-1,
    bubble(NN,T,[H2|T2]).

swap(X,X,List,List).

swap(_,2,[H|[H3|T3]],[H3|[H|T3]]).
	
swap(1,Y,[H|[H2|T2]],[H3|[H2|T3]]):-
    NY is Y-1,
    swap(1,NY,[H|T2],[H3|T3]).

swap(X,Y,[H|T],[H|T2]):-
    NX is X-1,
    NY is Y-1,
    swap(NX,NY,T,T2).
    


