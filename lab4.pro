domains
s=symbol
predicates
%Task 1
nondeterm parent(s,s)
female(s)
male(s)
mother(s,s)
father(s,s)
nondeterm ancestor(s,s)
nondeterm child(s,s)
%Task 2
nondeterm likes(symbol,symbol)
%Task 3
nondeterm can_buy(symbol, symbol) 
person(symbol) 
nondeterm car(symbol) 
likes(symbol, symbol)
for_sale(symbol)
%Task 4
cooker(symbol)
food(symbol,symbol)

clauses
%Task 1
parent(ann,jane). 
parent(ann,tom).
parent(jerry,jane).
parent(jane,john).
parent(jane,pam).
parent(pam,jim).
female(ann). 
female(jane).
female(pam).
male(tom). 
male(jerry).
male(jim).
male(john).
%rules for task 1
child(Y,X):- parent(X,Y).
mother(X,Y):- parent(X,Y),female(X). 
father(X,Y):- parent(X,Y),male(X). 
ancestor(X,Z):- parent(X,Z). 
ancestor(X,Z):- parent(X,Y),ancestor(Y,Z).
brother(X,Y):- male(X), father(F,X), father(F,Y), mother(M,X), mother(M,Y), X<>Y.
sister(X,Y):- female(X), father(F,X), father(F,Y), mother(M,X), mother(M,Y), X<>Y.
grand_father(X,Y):- male(X), parent(P,Y), parent(X,P).
grand_mother(X,Y):- female(X), parent(P,Y), parent(X,P).

%task 2
likes(elly, music). 
likes(alex, football).
likes(timmy, art).
likes(jimmy, swimming).
likes(tony, volleyball).

%task 3
person(anton).
person(maks).
car(bmw).
car(toyota).
likes(anton, bmw).
likes(maks, toyota).
for_sale(cakes).
for_sale(toyota).
for_sale(bmw).
%rule for task 3
can_buy(X, Y) :- person(X), car(Y),likes(X, Y), for_sale(Y).

%task 4
cooker(alexander).
cooker(tony).
cooker(anna).
food(alexander, chikens).
food(tony,ratatoulle).
food(anna,cheesecake).

goal


	%cooker(alex).
	%food(Who,chikens).
	%food(alex,what).
	food(alexander,What).