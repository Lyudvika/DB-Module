CREATE FUNCTION [ufn_CalculateFutureValue](@sum DECIMAL(18,4), @yearlyInterestRate FLOAT, @theNumberOfYears INT)
RETURNS DECIMAL(18,4)
		  BEGIN
					RETURN @sum * POWER(1 + @yearlyInterestRate, @theNumberOfYears)
		    END