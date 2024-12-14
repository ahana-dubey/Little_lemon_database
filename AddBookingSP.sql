CREATE DEFINER=`metauser`@`%` PROCEDURE `AddBooking`(p_BookingID INT, p_CustomerID INT,p_TableNumber INT, p_BookingDate DATE )
BEGIN

INSERT INTO Bookings(BookingID,CustomerID,TableNumber,Date) VALUES (p_BookingID, p_CustomerID, p_TableNumber, DATE(p_BookingDate));
SELECT CONCAT('New booking added') AS 'Confirmation';
END