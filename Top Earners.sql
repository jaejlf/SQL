SELECT salary*months AS earnings , COUNT(employee_id)  
FROM Employee
GROUP BY earnings DESC
LIMIT 1;