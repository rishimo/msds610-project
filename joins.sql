with employee AS
(
SELECT 111 AS employee_id, 'Mark' AS employee_name, 'Product' AS department, 'Engineer I' AS position UNION ALL
SELECT 112 AS employee_id, 'Rishi' AS employee_name, 'Product' AS department, 'Manager' AS position UNION ALL
SELECT 113 AS employee_id, 'YenHsin' AS employee_name, 'IT' AS department, 'Senior Manager' AS position UNION ALL 
SELECT 114 AS employee_id, 'Mike' AS employee_name, 'Data Science' AS department, 'Engineer II' AS position UNION ALL
SELECT 115 AS employee_id, 'Robert' AS employee_name, 'Data Science' AS department, 'Senior Manager' AS position UNION ALL
SELECT 116 AS employee_id, 'Mary' AS employee_name, 'Machine Learning' AS department, 'Manager' AS position UNION ALL 
SELECT 117 AS employee_id, 'Dianne' AS employee_name, 'Data Science' AS department, 'Engineer III' AS position UNION ALL
SELECT 118 AS employee_id, 'Trump' AS employee_name, 'Machine Learning' AS department, 'Manager' AS position UNION ALL
SELECT 119 AS employee_id, 'Justin' AS employee_name, 'IT' AS department, 'Engineer I' AS position UNION ALL 
SELECT 120 AS employee_id, 'Bieber' AS employee_name, 'Product' AS department, 'Engineer II' AS position
)
,

project AS
(
SELECT 1001 AS project_id, 'Big Project' AS project_name, 114 AS pic_id, 112 AS supervisor_id, 'late' AS status UNION ALL
SELECT 1002 AS project_id, 'Bigger Project' AS project_name, 112 AS pic_id, 115 AS supervisor_id, 'on hold' AS status UNION ALL
SELECT 1003 AS project_id, 'Even Bigger Project' AS project_name, 117 AS pic_id, 116 AS supervisor_id, 'on time' AS status UNION ALL
SELECT 1004 AS project_id, 'Project thats Gonna Bang' AS project_name, 113 AS pic_id, 118 AS supervisor_id, 'late' AS status UNION ALL
SELECT 1005 AS project_id, 'Dark Project' AS project_name, 116 AS pic_id, null AS supervisor_id, 'on time' AS status UNION ALL
SELECT 1006 AS project_id, 'Bright Project' AS project_name, 120 AS pic_id, 113 AS supervisor_id, 'late' AS status UNION ALL
SELECT 1007 AS project_id, 'Super Duper Project' AS project_name, 118 AS pic_id, 113 AS supervisor_id, 'on time' AS status UNION ALL
SELECT 1008 AS project_id, 'USF Project' AS project_name, 119 AS pic_id, 112 AS supervisor_id, 'on time' AS status UNION ALL
SELECT 1009 AS project_id, 'OMG Project' AS project_name, null AS pic_id, null AS supervisor_id, 'preparation' AS status
)
,

inner_join AS (
SELECT p.project_name, e.employee_name AS person_in_charge, e.department, e.position, p.status, p.supervisor_id
FROM employee AS e
JOIN project AS p
ON e.employee_id = p.pic_id
)
,

left_join AS (
SELECT e.employee_name, p.project_name, e.department, e.position, p.status
FROM employee AS e
LEFT JOIN project AS p
ON e.employee_id = p.pic_id
)
,

outer_join AS (
SELECT e.employee_name, p.project_name, e.department, e.position, p.status
FROM employee AS e
FULL OUTER JOIN project AS p
ON e.employee_id = p.pic_id
)

SELECT * FROM outer_join

