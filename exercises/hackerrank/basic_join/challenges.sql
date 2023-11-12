

select 
    Hackers.hacker_id as hacker_id,
    Hackers.name as name,
    count(Challenges.challenge_id) as challenges_created_per_student
from Hackers
inner join Challenges
    on Hackers.hacker_id = Challenges.hacker_id
group by hacker_id, name
having

    challenges_created_per_student =
    (select max(challenges_created)
    from (
    select 
        hacker_id, 
        count(challenge_id) as challenges_created
    from Challenges
    group by hacker_id
    order by challenges_created desc, hacker_id asc) as challenges_created_per_hacker_id)
    
    or challenges_created_per_student in
    (select challenges_created
    from (
    select challenges_created, count(challenges_created)
    from (
    select 
        hacker_id, 
        count(challenge_id) as challenges_created
    from Challenges
    group by hacker_id
    order by challenges_created desc, hacker_id asc) as challenges_created_per_hacker_id
    group by challenges_created
    having count(challenges_created) = 1) as unique_number_of_challenges_created)
    
order by 
    challenges_created_per_student desc, hacker_id asc 
