create table Edges (Source int, Destination int);
insert into Edges values(10, 5);
insert into Edges values (6,25);
insert into Edges values (1,3);
insert into Edges values (4,4);
SELECT * FROM Edges;
SELECT Source FROM Edges;
SELECT Source,Destination FROM Edges WHERE Source > Destination;
insert into Edges values ('-1','2000') --I did not get an error, but this is not correct because you can't store a string into an INT type. If a VARCHAR was used instead then you could store the string representation of the integer. 



