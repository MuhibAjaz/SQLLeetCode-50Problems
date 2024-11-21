select id , count(*) as num 
from 
(select requester_id as id from RequestAccepted
UNION ALL 
select accepter_id from RequestAccepted) as abc
group by id 
order by num desc limit 1
