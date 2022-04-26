SELECT H.hacker_id, H.name, SUM(sq.m_score) 
FROM (SELECT hacker_id, MAX(score) as m_score FROM Submissions GROUP BY hacker_id, challenge_id ) AS sq
LEFT JOIN Hackers H ON sq.hacker_id = H.hacker_id
GROUP BY H.hacker_id, H.name
HAVING SUM(sq.m_score) != 0
ORDER BY SUM(sq.m_score) DESC, H.hacker_id;