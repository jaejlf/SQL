-- 어린 동물 찾기

SELECT animal_id, name
FROM Animal_Ins
WHERE intake_condition != "Aged"
ORDER BY animal_id;