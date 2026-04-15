# INTRODUCTION TO SQL ASSIGNMENTS

**Nairobi Academy** is a secondary school in Nairobi.

## Instructions
You are the new database administrator for Greenwood Academy, a secondary school in Nairobi.  
Your job is to build the school database from scratch and start querying it.

---

## The Schema
- **Schema name:** `nairobi_academy`

---

## The Three Tables

### Table 1: `students`
Stores information about each student enrolled at the school.

### Table 2: `subjects`
Stores information about each subject offered at the school.

### Table 3: `exam_results`
Records each student’s exam result for each subject.

---

# QUESTIONS

## SECTION A – Building the Database (DDL)

**Q1.** Create a schema called `nairobi_academy` and make sure SQL is using it before you do anything else.

**Q2.** Create the `students` table with the required columns.

**Q3.** Create the `subjects` table with the required columns.

**Q4.** Create the `exam_results` table with the required columns.

**Q5.** After creating the `students` table, the school realizes they forgot to include a phone number column.  
Use `ALTER TABLE` to add a column called `phone_number` with data type `VARCHAR(20)`.

**Q6.** The column `credits` in the `subjects` table needs to be renamed to `credit_hours`.  
Write the SQL to rename it.

**Q7.** The school decides they no longer need the `phone_number` column.  
Write the SQL to remove it completely from the `students` table.

---

## SECTION B – Filling the Database (DML: INSERT, UPDATE, DELETE)

**Q8.** Insert all 10 students into the `students` table.

**Q9.** Insert all 10 subjects into the `subjects` table.

**Q10.** Insert all 10 exam results into the `exam_results` table.

**Q11.** Run a `SELECT` query to confirm all 10 rows exist in each table.

**Q12.** Esther Akinyi has moved from Nakuru to Nairobi.  
Write an `UPDATE` statement to change her city. *(student_id = 5)*

**Q13.** The marks for `result_id = 5` were entered incorrectly (correct marks = 59).  
Write an `UPDATE` statement to fix this.

**Q14.** The exam result with `result_id = 9` has been cancelled.  
Write a `DELETE` statement to remove it.

---

## SECTION C – Querying the Data (Filtering with WHERE)

**Q15.** Find all students who are in Form 4.

**Q16.** Find all subjects in the Sciences department.

**Q17.** Find all exam results where marks ≥ 70.

**Q18.** Find all female students only.  
*Hint: `gender = 'F'`*

**Q19.** Find all students who are in Form 3 **AND** from Nairobi.

**Q20.** Find all students who are in Form 2 **OR** Form 4.

---

# PART 2 – BETWEEN, IN/NOT IN, LIKE, COUNT, CASE WHEN

## SECTION A – Range, Membership & Search Operators

**Q1.** Find exam results where marks are between 50 and 80 (inclusive).

**Q2.** Find exams between `'2024-03-15'` and `'2024-03-18'`.

**Q3.** Find students living in Nairobi, Mombasa, or Kisumu using `IN`.

**Q4.** Find students NOT in Form 2 or Form 3 using `NOT IN`.

**Q5.** Find students whose first name starts with 'A' or 'E' using `LIKE`.

**Q6.** Find subjects whose name contains 'Studies'.

---

## SECTION B – COUNT

**Q7.** Count how many students are in Form 3.

**Q8.** Count how many exam results have marks ≥ 70.

---

## SECTION C – CASE WHEN

**Q9.** Label each exam result with a grade:

- `'Distinction'` if marks ≥ 80  
- `'Merit'` if marks ≥ 60  
- `'Pass'` if marks ≥ 40  
- `'Fail'` if marks < 40  

Call the column `performance`.

---

**Q10.** Label each student as:

- `'Senior'` → Form 3 or Form 4  
- `'Junior'` → Form 1 or Form 2  

Call the column `student_level`.

Show:
- first name  
- last name  
- class  
- student_level  

---

# Reminders Before You Start

- Every SQL statement must end with a semicolon `;`
- Text values must be in single quotes → `'Nairobi'`
- Numbers do **NOT** need quotes → `WHERE marks > 70`
- Always use `WHERE` with `UPDATE` and `DELETE`
- Dates format → `'YYYY-MM-DD'`
- `BETWEEN` is inclusive
- `IN` uses brackets → `IN ('Nairobi', 'Mombasa')`
- `LIKE` patterns:
  - `'A%'` → starts with A  
  - `'%Studies%'` → contains Studies
- `CASE WHEN` must end with `END`
- Always name your `CASE` column using `AS`
