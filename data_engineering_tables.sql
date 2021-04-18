--Use the information you have to create a table schema for each of the six CSV files. Remember to specify data types, primary keys, foreign keys, and other constraints.

--For the primary keys check to see if the column is unique, otherwise create a composite key. Which takes to primary keys in order to uniquely identify a row.

--Be sure to create tables in the correct order to handle foreign keys.

--Import each CSV file into the corresponding SQL table. Note be sure to import the data in the same order that the tables were created and account for the headers when importing to avoid errors.

CREATE TABLE departments (
  dept_no VARCHAR,
  dept_name VARCHAR NOT NULL,
  PRIMARY KEY (dept_no)
);

select * from departments