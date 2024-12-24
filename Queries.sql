SELECT TOP 1 CustomerServiceRepresentativeNationalID, COUNT(CustomerServiceRepresentativeNationalID) AS SupportsCount
FROM DriverSupportRequest 
GROUP BY CustomerServiceRepresentativeNationalID
ORDER BY SupportsCount DESC

SELECT TOP 1 CustomerServiceRepresentativeNationalID, COUNT(CustomerServiceRepresentativeNationalID) AS SupportsCount
FROM DriverSupportRequest 
GROUP BY CustomerServiceRepresentativeNationalID
ORDER BY SupportsCount ASC

SELECT TOP 10 PassengerPhoneNumber, COUNT(PassengerPhoneNumber) AS TripsCount
FROM Trip 
GROUP BY PassengerPhoneNumber
ORDER BY TripsCount DESC

SELECT TOP 10 PassengerPhoneNumber, COUNT(PassengerPhoneNumber) AS TripsCount
FROM Trip 
GROUP BY PassengerPhoneNumber
ORDER BY TripsCount ASC

SELECT TOP 5 DriverNationalID, COUNT(DriverNationalID) AS TripsCount
FROM Trip 
GROUP BY DriverNationalID
ORDER BY TripsCount DESC

SELECT TOP 5 DriverNationalID, COUNT(DriverNationalID) AS TripsCount
FROM Trip 
GROUP BY DriverNationalID
ORDER BY TripsCount ASC

SELECT AVG(DATEDIFF(minute, RequestDateTime, StartDateTime)) as AverageDriversResponseTimeInMinutes
FROM Trip

SELECT AVG(DATEDIFF(minute, StartDateTime, EndDateTime)) as AverageTripDurationInMinutes
FROM Trip

SELECT AVG(DATEDIFF(minute, StartDateTime, EndDateTime)) as AverageDriverSupportRequestDurationInMinutes
FROM DriverSupportRequest

SELECT AVG(DATEDIFF(minute, StartDateTime, EndDateTime)) as AveragePassengerSupportRequestDurationInMinutes
FROM PassengerSupportRequest

SELECT Status, COUNT(*) * 100 / SUM(COUNT(*)) OVER() AS Percentage
From Trip
GROUP BY Status

SELECT Status, COUNT(*) * 100 / SUM(COUNT(*)) OVER() AS Percentage
From WithdrawalReceipt
GROUP BY Status

SELECT Status, COUNT(*) * 100 / SUM(COUNT(*)) OVER() AS Percentage
From DepositReceipt
GROUP BY Status

SELECT Status, COUNT(*) * 100 / SUM(COUNT(*)) OVER() AS Percentage
From DriverSupportRequest
GROUP BY Status

SELECT Status, COUNT(*) * 100 / SUM(COUNT(*)) OVER() AS Percentage
From PassengerSupportRequest
GROUP BY Status

SELECT DATEPART(hour, RequestDateTime) AS RequestHour, COUNT(DATEPART(hour, RequestDateTime)) AS Total
FROM Trip
GROUP BY DATEPART(hour, RequestDateTime)
ORDER BY Total DESC