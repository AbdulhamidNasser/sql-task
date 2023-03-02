CREATE PROCEDURE get_even_numbers_below_100
AS
BEGIN
    DECLARE @counter INT = 0

    WHILE @counter < 100
    BEGIN
        SET @counter = @counter + 2
        PRINT @counter
    END
END
EXEC get_even_numbers_below_100



CREATE PROCEDURE get_odd_numbers_below_100
AS
BEGIN
    DECLARE @counter INT = 1

    WHILE @counter < 100
    BEGIN
        PRINT @counter
        SET @counter = @counter + 2
    END
END

EXEC get_odd_numbers_below_100



CREATE PROCEDURE is_prime
    @num INT
AS
BEGIN
    DECLARE @i INT;
    SET @i = 2;
    WHILE (@i <= @num / 2)
    BEGIN
        IF (@num % @i = 0)
        BEGIN
            SELECT 'The number ' + CAST(@num AS VARCHAR) + ' is not prime';
            RETURN;
        END;
        SET @i = @i + 1;
    END;
    SELECT 'The number ' + CAST(@num AS VARCHAR) + ' is prime';
END;

EXEC is_prime @num = 17;



CREATE PROCEDURE sum_of_10_numbers
AS
BEGIN
    DECLARE @sum NUMERIC, @i NUMERIC
    SET @sum = 0;
    SET @i = 1;
    WHILE (@i <= 10)
    BEGIN
        SET @sum = @sum + @i;
        SET @i = @i + 1;
    END
    PRINT @sum

END

EXEC sum_of_10_numbers;


create procedure departments_insert
(
    @deptid  int,
    @dept_name  varchar,
   @HOD  varchar
)
AS
begin
	insert into department (dept_id,DEPT_NAME,HOD)
              values (@deptid,@dept_name,@HOD);
	PRINT('record saved sucessfully');	
end;

EXEC departments_insert 111,'aaa','asas';


CREATE TABLE Registration
(
  AcNo INT PRIMARY KEY,
  FName VARCHAR(15) NOT NULL,
  LName VARCHAR(15) NOT NULL,
  DOB DATE,
  RegDate DATE DEFAULT GETDATE(),
  CivilID INT NOT NULL,
  Gender CHAR(1),
  GSM INT,
  OpenBal DECIMAL(10,2),
  CONSTRAINT gsm_unique UNIQUE(GSM),
  CONSTRAINT Openbal_check CHECK(OpenBal >= 50),
  CONSTRAINT gender_check CHECK(Gender IN('M','m','F','f'))
);

CREATE TABLE Deposits
(
  DNO INT PRIMARY KEY,
  AcNO INT,
  DDate DATE DEFAULT GETDATE(),
  DAmt DECIMAL(10,2) NOT NULL,
  DLocation VARCHAR(10) NOT NULL,
  CONSTRAINT dept_reg_FK FOREIGN KEY(AcNO) REFERENCES Registration(AcNo)
);

CREATE TABLE Withdrawls
(
  WNo INT PRIMARY KEY,
  AcNO INT,
  WDate DATE DEFAULT GETDATE(),
  WAmount DECIMAL(10,2) NOT NULL,
  WLocation VARCHAR(10) NOT NULL,
  CONSTRAINT dept_Withd_FK FOREIGN KEY(AcNO) REFERENCES Registration(AcNo)
);

CREATE PROCEDURE Reg_Add_Record
(
    @AcNo INT,
    @FName VARCHAR(15),
    @LName VARCHAR(15),
    @DOB DATE,
    @RegDate DATE,
    @CivilID INT,
    @Gender CHAR(1),
    @Gsm INT,
    @OpenBal DECIMAL(10,2)
)
AS
BEGIN
    INSERT INTO Registration (AcNo, FName, LName, DOB, RegDate, CivilID, Gender, GSM, OpenBal)
    VALUES (@AcNo, @FName, @LName, @DOB, @RegDate, @CivilID, @Gender, @Gsm, @OpenBal);
    PRINT('Record saved successfully');
END

EXEC Reg_Add_Record 1111, 'Abdul', 'huseini', '1991-03-18', '2023-02-26', 999999, 'Male', 222222, 100.00;
EXEC Reg_Add_Record 2222, 'Salim', 'Ali', '1999-05-11', '2023-03-03', 7777, 'Male', 233222, 100.00;



CREATE PROCEDURE Reg_Update_OpenGSM
    @AcNo INT,
    @NewGSM INT
AS
BEGIN
    UPDATE Registration
    SET GSM = @NewGSM
    WHERE AcNo = @AcNo;
    PRINT 'GSM number updated successfully';
END

EXEC Reg_Update_OpenGSM @AcNo = 1111, @NewGSM = 9999888;

CREATE PROCEDURE Reg_Del_Record
    @AcNo INT
AS
BEGIN
    DELETE FROM Registration
    WHERE AcNo = @AcNo;
    PRINT 'Record deleted successfully';
END

EXEC Reg_Del_Record @AcNo = 1111;


CREATE PROCEDURE Deposit_Amt
    @AcNo INT,
    @DAmt DECIMAL(10,2),
    @DLocation VARCHAR(10)
AS
BEGIN
    INSERT INTO Deposits (AcNo, DAmt, DLocation)
    VALUES (@AcNo, @DAmt, @DLocation);
    PRINT 'Deposit record saved successfully';
END

EXEC Deposit_Amt @AcNo = 1111, @DAmt = 500, @DLocation = 'ATM';

select * from Deposits

CREATE PROCEDURE Withdraw_Amt
  @WNo INT,
  @AcNo INT,
  @WDate DATE,
  @WAmount DECIMAL(10,2),
  @WLocation VARCHAR(10)
AS
BEGIN
UPDATE Withdrawls
        SET WAmount = WAmount - @WAmount
        WHERE AcNo = @AcNo
  INSERT INTO Withdrawls (WNo, AcNo, WDate, WAmount, WLocation)
  VALUES (@WNo, @AcNo, @WDate, @WAmount, @WLocation)
END

EXEC Withdraw_Amt 1, 1111, '2023-02-26', 300.00, 'ATM'

EXEC Withdraw_Amt 1, 1111, '2023-02-26', 500.00, 'ATM'

SELECT * FROM Withdrawls
