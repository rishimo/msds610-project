# msds610-project
Repository for MSDS610 Communications for Analytics final project.

This project demonstrates the use of different types of join to analyze employee and project data. It involves three primary SQL operations: inner join, left join, and outer join. 

[Presentation Link](https://docs.google.com/presentation/d/1qDhv6hP0t6VA9dvkX2FX_tRjgmxpXe5bjN7hRmDjkrc/edit?usp=sharing)

<br>

## Getting Started

To run these SQL queries, you need access to a relational database system (e.g., PostgreSQL, MySQL) and a database containing tables named `employee` and `project`. You can set up a database and run these queries using SQL client tools or by pasting them into a SQL script.

<br>


## Data and Code Overview

- `employee`: Contains information about employees, including `employee_id`, `employee_name`, `department`, and `position`.
  
  ![kitPzNJ0OscLYEk3fXnWMcStJKadPjaaxwt8Don-omHqicSEs8juY59BHs_AgdZXtNbywa43t7MEg79-icbyYMsp_xJMJ-KlwguDnNdpC4gvFIoX-iWOZaqj3m8e](https://github.com/rishimo/msds610-project/assets/138905247/3bd791ba-611d-4465-8227-759ce8171002)


- `project`: Contains information about projects, including `project_id`, `project_name`, `pic_id` (person in charge), `supervisor_id`, and `status`.

  ![Pkkx0Nk609T-0wJwxw73X2rotIWAIU7IrCrSFORdpCp1kZY_sxO-kPyfaQQwklvzr2H9rwv5mytEwq7ib2C2u0CLlkDJkAwXDuv1XmWgmuXUJ2SiXrZ_C1uPRRzr](https://github.com/rishimo/msds610-project/assets/138905247/aaf738f7-0d8c-4940-ab1b-8d6e05cf8500)


- The code includes three SQL queries: inner join, left join, and outer join. These queries combine data from the `employee` and `project` tables based on common keys.

<br>
  

## SQL Queries

- **Inner Join**: Combines employee and project data using an inner join. It selects project information along with the employee responsible (`person_in_charge`) and their department and position. The result includes only matched rows.


  ```sql
  inner_join AS (
  SELECT p.project_name, e.employee_name AS person_in_charge, e.department, e.position, p.status, p.supervisor_id
  FROM employee AS e
  JOIN project AS p
  ON e.employee_id = p.pic_id
  )
  ```


- **Left Join**: Combines employee and project data using a left join. It selects employee information and project names where employees are in charge (`pic_id`). Rows with no matches in the `project` table will have NULL values for project-related columns.

  
  ```sql
  left_join AS (
  SELECT e.employee_name, p.project_name, e.department, e.position, p.status
  FROM employee AS e
  LEFT JOIN project AS p
  ON e.employee_id = p.pic_id
  )
  ```


- **Outer Join**: Combines employee and project data using a full outer join. It selects all available data from both tables. Rows with no matches in either table will have NULL values in the corresponding columns.

  ```sql
  outer_join AS (
  SELECT e.employee_name, p.project_name, e.department, e.position, p.status
  FROM employee AS e
  FULL OUTER JOIN project AS p
  ON e.employee_id = p.pic_id
  )
  ```
  
<br>

The results of each join are saved in the `inner_join`, `left_join`, and `outer_join` CTEs. You can view the results by selecting from these CTEs. The output includes relevant employee and project information based on the type of join performed.

  **Example: outer join**
  
  ```sql
  SELECT * FROM outer_join
  ```


## Result

- **Inner Join**: Shows all employees with corresponding projects

  ![VxnAJxLVPqtzNiDcr7d9r3iB97Oa_KBw8BDvkHlGGZPCTRQT4noN9T6RPOUEw-67uPqNK1V_9ujOKIoiEy-lHfr6CjtM7h8sa52QmQEyoNXp-SbMXOmaou2rFe5S](https://github.com/rishimo/msds610-project/assets/138905247/fa831f14-3f75-4d8d-9181-52edc93304d6)

- **Left Join**: Can include employee that doesn't have the current project

  ![eHLM0XmpFxKXvU3gne46u6rN1ZhUSB_BxoqqQ_kMd9NfMqltHIac-WH6v4OQBlLbglXs5QV4P0DCOCyEnrUxc7PMFPhe1-4571hL35k_xTzt8KywRxT8OmRuZxIU](https://github.com/rishimo/msds610-project/assets/138905247/a160970d-9764-40cf-94b3-7458ebd4b859)

- **Outer Join**: Can see who is available and which project is not yet taken

  ![tg3wN5_le5t6Z4UA1Gq5DbWYKvlb3afKBE2C88I1xSaRdUk9qC-99r7ziwzsXK1vigh6QPMTvqfhz7Lr_rYEpLW2OJVRDK85QkXO2bWCjkqsCy3gtp08vxrI8efo](https://github.com/rishimo/msds610-project/assets/138905247/2a0aa1b1-577f-4ea1-9c2f-47c68ac87cd0)




