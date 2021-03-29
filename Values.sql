select * from Embloyee
--insert values into Embloyee table
insert into Embloyee
values
('Johan','Adam',1988-02-14-1452, 0754269841,'Johan12@hotmail.com','Fabriksgatan12'),
('Wiliam','Ken',1998-09-06-5682, 0785463218,'Wiliam2@hotmail.com','januarigatan2'),
('Tony','kim',1981-06-25-1758, 0789654123,'	TONY12@hotmail.com','Lillavägen15'),
('Christian','Jakop',1970-09-04-1752, 0745216987,'Chris@hotmail.com','Fabriksgatan26'),
('Elin','Lana',1977-05-16-5652, 0789643589,'ELin12s@hotmail.com','korsvägen15')

--insert values into Product Table
insert into Product
values 
('PrästOst',55,20200301, 20220301),
('Pastasås',28,20200501, 20220501),
('HögrevBenfri',175,20210310, 20210401),
('Halloumi',169,20210301, 20221001),
('PastaPenneRigate',27,20200301, 20220901)



--insert values into Customer table
insert into Customer
values 
('Hadi','jim',1988-02-14-1475, 0754263411,'Hadi12@hotmail.com','Fabriksgatan17'),
('William','Hasi',1998-09-06-5472, 0785463218,'Wiliam26@hotmail.com','januarigatan20'),
('Theres','kim',1981-06-25-1368, 0782644123,'Theres@hotmail.com','Lillavägen17'),
('Klara','Lare',1970-09-04-9952, 0741246987,'Klara@hotmail.com','Fabriksgatan23'),
('shirin','jamo',1977-05-16-5242, 0789156589,'shirin@hotmail.com','korsvägen11')


--insert values into Pruchases table with 2 forigen keys custmerid and productId
insert into Pruchases
values 
(5,1,55,GETDATE()),
(4,2,28,GETDATE()),
(3,3,175,GETDATE()),
(2,4,169,GETDATE()),
(1,5,27,GETDATE())



--insert values into SElls table with 2 forigen keys EmployeeId and productId
 insert into SalesRevenues
 values
(1,5,27,GETDATE()),
(2,2,28,GETDATE()),
(3,4,169,GETDATE()),
(4,3,175,GETDATE()),
(5,1,55,GETDATE())


--insert values into Regestiration table with 2 forigen keys EmployyeId custmerid
insert into Regestiration
values 
(1,5,GETDATE()),
(2,3,GETDATE()),
(3,2,GETDATE()),
(4,1,GETDATE()),
(5,4,GETDATE())

