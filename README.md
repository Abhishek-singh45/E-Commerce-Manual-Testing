# E-Commerce Manual & Functional Testing

## Project Overview

This project demonstrates manual and functional testing of a sample e-commerce web application using industry-standard QA practices and tools.

The application under test is **SauceDemo (Swag Labs)**.

## Application Under Test

- **Application:** SauceDemo / Swag Labs
- **Testing Type:** Manual & Functional Testing
- **Testing Approach:** Black-Box Testing
- **Tools:** Manual Testing, Jira, MySQL

## Project Scope

The following modules were covered:

- Login
- Product Search
- Product Details
- Shopping Cart
- Checkout

## Test Execution Summary

| Metric | Result |
|---|---:|
| Test Scenarios | 24 |
| Test Cases | 85 |
| Passed | 77 |
| Failed | 8 |
| Defects Logged in Jira | 8 |

## Testing Performed

- Functional Testing
- Smoke Testing
- Sanity Testing
- Positive Testing
- Negative Testing
- End-to-End Testing
- Black-Box Testing
- Boundary Value Analysis (BVA)
- Equivalence Partitioning (EP)

## Test Case Documentation

Test cases were designed with:

- Test Scenario ID
- Test Case ID
- Preconditions
- Test Steps
- Test Data
- Expected Result
- Actual Result
- Status

The complete test case documentation is available in:

`Test-Cases/E-Commerce-Test-Cases.xlsx`

## Defect Management

Defects identified during testing were documented and tracked using Jira.

Each defect included:

- Defect Summary
- Test Case ID
- Steps to Reproduce
- Test Data
- Expected Result
- Actual Result
- Priority
- Defect Status
- Labels

Jira defect documentation is available in:

`Jira/Jira-Bug-Reports.pdf`

## SQL Validation

MySQL was used to practice backend data validation for QA scenarios.

The SQL practice database included:

- Users
- Products
- Cart

SQL queries were used for:

- Data retrieval
- JOIN operations
- COUNT
- SUM
- Product validation
- Cart validation
- Data integrity checks

> Note: The SQL database used in this project is a local QA practice database created for backend validation exercises. It is not the production database of SauceDemo.

SQL files are available in:

`SQL/`

## Project Structure

```text
E-Commerce-Manual-Testing/
│
├── README.md
│
├── Test-Cases/
│   └── E-Commerce-Test-Cases.xlsx
│
├── Jira/
│   └── Jira-Bug-Reports.pdf
│
├── SQL/
│   ├── database-setup.sql
│   └── sql-validation-queries.sql
│
├── Screenshots/
│   ├── jira/
│   ├── test-execution/
│   └── sql/
│
└── Documents/
    └── Test-Summary.pdf
