# LeetCode 176. Second Highest Salary

🔗 [문제 링크](https://leetcode.com/problems/second-highest-salary/)

## 📜 Problem Description
Write a SQL query to get the second highest salary from the Employee table.  
If there is no second highest salary, return `NULL`.

## 💻 SQL Solution
```sql
SELECT MAX(salary) AS SecondHighestSalary
FROM (
    SELECT salary,
           DENSE_RANK() OVER (ORDER BY salary DESC) AS rnum
    FROM Employee
) sub
WHERE rnum = 2;
```


## 📝 Explanation
- DENSE_RANK() ranks salaries without skipping numbers.
- Filtered rnum = 2 → second highest salary.
- MAX() ensures one value is returned. If none exists, returns NULL.

## ✨ Key Learnings
- DENSE_RANK() is better than RANK() when duplicates exist.
- Pattern: window function + filter for N-th value.

## 📊 Complexity
- Time Complexity: O(n) — requires scanning all rows in the Employee table.
- Space Complexity: O(n) — window function stores intermediate results.