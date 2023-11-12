
select 
    hacker_id, 
    name, 
    sum(score)
from (
    select 
        Hackers.hacker_id as hacker_id, 
        Hackers.name as name, 
        max(Submissions.score) as score, 
        Submissions.challenge_id
    from Hackers
    inner join Submissions
        on Hackers.hacker_id = Submissions.hacker_id
    group by 
        Submissions.challenge_id, 
        Hackers.hacker_id, 
        Hackers.name
) max_score_per_challenge
group by 
    hacker_id, 
    name
having 
    sum(score) > 0
order by 
    sum(score) desc, 
    hacker_id asc;