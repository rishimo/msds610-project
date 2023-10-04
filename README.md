# msds610-project
Repository for MSDS610 Communications for Analytics final project.


### Employee-Project Data Analysis

This project demonstrates the use of different types of join to analyze employee and project data. It involves three primary SQL operations: inner join, left join, and outer join. 


### Getting Started

To run these SQL queries, you need access to a relational database system (e.g., PostgreSQL, MySQL) and a database containing tables named `employee` and `project`. You can set up a database and run these queries using SQL client tools or by pasting them into a SQL script.

### Data and Code Overview

- `employee`: Contains information about employees, including `employee_id`, `employee_name`, `department`, and `position`.
  
  ![kitPzNJ0OscLYEk3fXnWMcStJKadPjaaxwt8Don-omHqicSEs8juY59BHs_AgdZXtNbywa43t7MEg79-icbyYMsp_xJMJ-KlwguDnNdpC4gvFIoX-iWOZaqj3m8e](https://github.com/rishimo/msds610-project/assets/138905247/3bd791ba-611d-4465-8227-759ce8171002)


- `project`: Contains information about projects, including `project_id`, `project_name`, `pic_id` (person in charge), `supervisor_id`, and `status`.

  ![Pkkx0Nk609T-0wJwxw73X2rotIWAIU7IrCrSFORdpCp1kZY_sxO-kPyfaQQwklvzr2H9rwv5mytEwq7ib2C2u0CLlkDJkAwXDuv1XmWgmuXUJ2SiXrZ_C1uPRRzr](https://github.com/rishimo/msds610-project/assets/138905247/aaf738f7-0d8c-4940-ab1b-8d6e05cf8500)


- The code includes three SQL queries: inner join, left join, and outer join. These queries combine data from the `employee` and `project` tables based on common keys.
  

### SQL Queries

- **Inner Join**: Combines employee and project data using an inner join. It selects project information along with the employee responsible (`person_in_charge`) and their department and position. The result includes only matched rows.
  
  ![VxnAJxLVPqtzNiDcr7d9r3iB97Oa_KBw8BDvkHlGGZPCTRQT4noN9T6RPOUEw-67uPqNK1V_9ujOKIoiEy-lHfr6CjtM7h8sa52QmQEyoNXp-SbMXOmaou2rFe5S](https://github.com/rishimo/msds610-project/assets/138905247/72d9d1be-5148-442e-b3e9-db8334890bf6)


- **Left Join**: Combines employee and project data using a left join. It selects employee information and project names where employees are in charge (`pic_id`). Rows with no matches in the `project` table will have NULL values for project-related columns.
  
  ![eHLM0XmpFxKXvU3gne46u6rN1ZhUSB_BxoqqQ_kMd9NfMqltHIac-WH6v4OQBlLbglXs5QV4P0DCOCyEnrUxc7PMFPhe1-4571hL35k_xTzt8KywRxT8OmRuZxIU](https://github.com/rishimo/msds610-project/assets/138905247/d45ff724-4de6-4406-a551-8e9d4f1b2c3e)


- **Outer Join**: Combines employee and project data using a full outer join. It selects all available data from both tables. Rows with no matches in either table will have NULL values in the corresponding columns.
  
  ![tg3wN5_le5t6Z4UA1Gq5DbWYKvlb3afKBE2C88I1xSaRdUk9qC-99r7ziwzsXK1vigh6QPMTvqfhz7Lr_rYEpLW2OJVRDK85QkXO2bWCjkqsCy3gtp08vxrI8efo](https://github.com/rishimo/msds610-project/assets/138905247/e041bc0c-79e9-4a5f-8537-63e3db82abbf)


  The results of each join are saved in the `inner_join`, `left_join`, and `outer_join` CTEs. You can view the results by selecting from these CTEs. The output includes relevant employee and project information based on the type of join performed.





