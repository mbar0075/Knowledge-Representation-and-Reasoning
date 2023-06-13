# Knowledge Representation and Reasoning

# Author
**Matthias Bartolo 0436103L**

## Preview:
```prolog
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
```

## Description of Task:
This repository contains **Prolog** tasks centered around the querying and evaluation of a knowledge base. These tasks involved working with a knowledge base that represented a fictional world, encompassing rules and facts that described relationships, properties, and behaviors of objects within the world. The main focus areas of the aformentioned tasks were:

**1. Knowledge Base Exploration:** A thorough examination of the knowledge base was conducted to understand the relationships, properties, and behaviors described within it. This involved identifying predicates and their corresponding arguments, gaining insights into the structure and content of the knowledge base.

**2. Querying the Knowledge Base:** Prolog predicates were developed to effectively retrieve information from the knowledge base. Through constructing queries, the current knowledge was accessed and new information was inferred, allowing for dynamic interaction with the knowledge base.

**3. Rule Evaluation:** The provided rules were carefully analyzed, taking into account their conditions and conclusions. Prolog predicates were implemented to evaluate these rules, determining their applicability and facilitating logical reasoning within the knowledge base.

**4. Recursive Problem Solving:** These tasks fostered an elevated problem-solving experience, enabling the effective resolution of knowledge-based problems and recursive challenges with improved proficiency.

Conclusively, these tasks provided valuable knowledge and practical experience in knowledge-based systems and Prolog programming. The exploration of the knowledge base, querying, rule evaluation, and problem-solving activities fostered an enhanced understanding of Prolog's logical programming paradigm and its practical applications within knowledge-based systems.

<p align='center'>
  <img src="https://github.com/mbar0075/Knowledge-Representation-and-Reasoning/assets/103250564/655fd1d5-ee4c-4e62-99b4-687ba1d9d236" style="display: block; margin: 0 auto; width: 15%; height: auto;">
</p>

## Deliverables:
The repository includes:<br />
1. Prolog Assignment
2. Prolog Exercises
 
