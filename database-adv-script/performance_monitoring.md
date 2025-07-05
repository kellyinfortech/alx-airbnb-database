# 🧪 Performance Monitoring and Refinement Report

## 🎯 Objective

Continuously monitor and refine database performance by analyzing query execution plans and implementing schema adjustments to resolve inefficiencies.

---

## 🔍 Step 1: Monitoring Query Performance

### 🔄 Frequently Used Query (Before Optimization)

```sql
EXPLAIN ANALYZE
SELECT b.id, b.start_date, b.end_date, u.name, p.name, p.city
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
WHERE p.city = 'Nairobi'
ORDER BY b.start_date DESC;
