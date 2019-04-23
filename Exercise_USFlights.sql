SELECT COUNT(*) FROM flights;

SELECT Origin, AVG(ArrDelay), AVG(DepDelay) FROM flights GROUP BY Origin;

SELECT Origin, colYear, colMonth, AVG(ArrDelay) FROM flights GROUP BY Origin, colYear, colMonth ORDER BY Origin, colYear, colMonth;

SELECT City, colYear, colMonth, AVG(ArrDelay) FROM flights JOIN usairports ON flights.Dest=usairports.IATA GROUP BY City, colYear, colMonth ORDER BY City, colYear, colMonth;

SELECT UniqueCarrier, colYear, colMonth, COUNT(Cancelled=1) FROM flights GROUP BY UniqueCarrier, colYear, colMonth ORDER BY COUNT(Cancelled=1), UniqueCarrier, colYear, colMonth;

SELECT TailNum, SUM(Distance) FROM flights GROUP BY TailNum ORDER BY -SUM(Distance) LIMIT 10;

SELECT UniqueCarrier, AVG(ArrDelay) FROM flights WHERE {AVG(ArrDelay)>10} GROUP BY UniqueCarrier ORDER BY -AVG(ArrDelay); 