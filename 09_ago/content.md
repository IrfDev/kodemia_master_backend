# Normalization

## Definition
 Process of simplifying data:
 - Storing using the less storage possible
 - Deleting repeated data
 - Deleting logic errors
 - Sorted data

## Normal forms
- 1NF (first normal form)
- 2NF (second normal form)
- 3NF (third normal form)
- BCNF (Boyce-codd Normal form)
- 4NF (fourth normal form)
- 5NF (fifth normal form)
- 6NF (sixth normal form)

### 1NF first normal form

#### Rules
- Unique field of a table shouldn't contain more than 1 value
- Every entry should have a primary key
- They shouldn't be duplicated entries
- Every column should have a unique value per row (in the table)

The resut; a table without duplicated data groups.

### 2NF - Second normal form
- Should be in his first normal form
- Shouldn't have partial dependencies
  - Each field should be completelty isolated from his primary key or unique id
    - EG: If you have an employee table
      - City shouldn't be just a text or varchar, because it will be several duplicated values
      - You should create another table instead

The result: A table without redundancy

### 3NF - Third normal form
- SHould in his first and second normal form
- Shouldn't be transitive dependencies
  - When you have column functionaly depending from other column but is not the primary col or primary key