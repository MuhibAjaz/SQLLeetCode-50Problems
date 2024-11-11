select "Low Salary" AS category,
count(income) as accounts_count
from 
Accounts
where income < 20000
UNION 
select "Average Salary" AS category, 
count(income) as accounts_count
from 
Accounts
where income Between 20000 AND 50000
UNION 
select "High Salary" AS category ,
count(income) as accounts_count
from 
Accounts
where income > 50000

