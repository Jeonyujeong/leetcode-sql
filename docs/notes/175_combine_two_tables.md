# LeetCode 175. Combine Two Tables

🔗 [문제 링크](https://leetcode.com/problems/combine-two-tables/)

## 📜 Problem Description
Write a SQL query to combine `Person` and `Address` tables.  
Return FirstName, LastName, City, and State.  
If a person has no address, still include them.

## 💻 SQL Solution
```sql
SELECT p.FirstName,
       p.LastName,
       a.City,
       a.State
FROM Person p
LEFT JOIN Address a
  ON p.PersonId = a.PersonId;
```

## 📝 Explanation
- Used LEFT JOIN so all persons are included, even without an address.
- Matched rows based on PersonId.

## ✨ Key Learnings
- LEFT JOIN keeps unmatched rows from the left table.
- Common pattern: merge data across related tables.

## 📊 Complexity
- Time Complexity: O(n) — scans both tables once.
- Space Complexity: O(1) — no extra space beyond result set.