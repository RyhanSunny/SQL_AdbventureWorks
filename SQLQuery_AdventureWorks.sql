SELECT * FROM [HumanResources].[Employee] WHERE ORGANIZATIONLEVEL IN (2,3)

--GIVE ME A LIST OF EMPLOYEES WHO HAVE A TITLE AS FACILITIES MANAGER
SELECT * FROM [HumanResources].[Employee] WHERE JOBTITLE LIKE 'FACILITIES MANAGER'


--GIVE ME ALL THE EMPLOYEES WHO HAVE THE WORD MANAGER IN THEIR TITLE
SELECT * FROM [HumanResources].[Employee] WHERE JOBTITLE LIKE '%Control%'


--GIVE ME ALL EMPLOYEE WHO ARE BORN AFTER Jan 1 , 1980
SELECT * FROM [HumanResources].[Employee] WHERE Birthdate > '1/1/1980'

--GIVE ME ALL EMPLOYEES WHO ARE BORN BETWEEN Jan1 , 1970 and Jan1 , 1980
SELECT * FROM [HumanResources].[Employee] WHERE BirthDate > '1/1/1970' AND BirthDate < '1/1/1980'

SELECT * FROM [HumanResources].[Employee] WHERE BirthDate BETWEEN '1/1/1970' AND '1/1/1980'

---CALCULATED COLUMNS.
SELECT NAME, LISTPRICE FROM [Production].[Product]

SELECT NAME, LISTPRICE, LISTPRICE + 10 AS ADJUSTED_LIST_PRICE FROM [Production].[Product]

--INTO
 
 SELECT NAME, LISTPRICE, LISTPRICE + 10 AS ADJUSTED_LIST_PRICE  INTO [Production].[Product_2] FROM [Production].[Product]

 SELECT * FROM [Production].[Product_2]

 SELECT NAME, LISTPRICE, LISTPRICE + 10 AS ADJUSTED_LIST_PRICE  INTO #tmpname FROM [Production].[Product]

 SELECT * FROM #tmpname

 --DELETE DATA FROM TABLE
 DELETE FROM [Production].[Product_2]
 WHERE NAME LIKE 'Bearing Ball'
 
 SELECT * FROM [Production].[Product_2]

 ---UPDATE 

 UPDATE [Production].[Product_2]
 SET NAME = 'BLADE_NEW'
 WHERE NAME LIKE 'BLADE'

 SELECT * FROM [Production].[Product_2]
 
 --------------
 ---DATES
 --------------
 SELECT GETDATE()
 SELECT GETDATE() - 3

 ---DATEPART
 SELECT DATEPART(yyyy, GETDATE())
 SELECT DATEPART(mm, '2/2/2019')

 ---DATEADD
 SELECT DATEADD(yyyy, 5, GETDATE())
 SELECT DATEADD(mm, 4, '05/08/2019')

