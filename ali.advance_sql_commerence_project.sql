select count(*) as total_rows 
from sales_pakistan.sales;

describe sales_pakistan.sales;

select * from sales_pakistan.sales limit 10;

SELECT COUNT(DISTINCT item_id) AS unique_items
FROM sales_pakistan.sales;

SELECT COUNT(DISTINCT increment_id) AS unique_orders
FROM sales_pakistan.sales;

SELECT COUNT(DISTINCT `Customer ID`) AS unique_customers
FROM sales_pakistan.sales;

SELECT status, COUNT(*) AS total
FROM sales_pakistan.sales
GROUP BY status
ORDER BY total DESC;

SELECT payment_method, COUNT(*) AS total
FROM sales_pakistan.sales
GROUP BY payment_method
ORDER BY total DESC;

SELECT category_name_1, COUNT(*) AS total
FROM sales_pakistan.sales
GROUP BY category_name_1
ORDER BY total DESC;

SELECT
    MIN(created_at) AS first_order,
    MAX(created_at) AS last_order
FROM sales_pakistan.sales;

SELECT Year, COUNT(*) AS total
FROM sales_pakistan.sales
GROUP BY Year
ORDER BY Year;

SELECT Month, COUNT(*) AS total
FROM sales_pakistan.sales
GROUP BY Month
ORDER BY Month;

SELECT FY, COUNT(*) AS total
FROM sales_pakistan.sales
GROUP BY FY
ORDER BY FY;

SELECT
    `BI Status`,
    COUNT(*) AS total
FROM sales_pakistan.sales
GROUP BY `BI Status`
ORDER BY total DESC;

SELECT
    MIN(qty_ordered) AS min_qty,
    MAX(qty_ordered) AS max_qty,
    AVG(qty_ordered) AS avg_qty
FROM sales_pakistan.sales;

SELECT
    MIN(price) AS min_price,
    MAX(price) AS max_price,
    AVG(price) AS avg_price
FROM sales_pakistan.sales;

SELECT
    MIN(grand_total) AS min_total,
    MAX(grand_total) AS max_total,
    AVG(grand_total) AS avg_total,
    SUM(grand_total) AS total_revenue
FROM sales_pakistan.sales;

SELECT
    MIN(discount_amount) AS min_discount,
    MAX(discount_amount) AS max_discount,
    AVG(discount_amount) AS avg_discount,
    SUM(discount_amount) AS total_discount
FROM sales_pakistan.sales;

SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT item_id) AS unique_items,
    COUNT(DISTINCT increment_id) AS unique_orders,
    COUNT(DISTINCT `Customer ID`) AS unique_customers,
    COUNT(DISTINCT sku) AS unique_skus,
    COUNT(DISTINCT category_name_1) AS unique_categories,
    COUNT(DISTINCT payment_method) AS payment_methods
FROM sales_pakistan.sales;

SELECT *
FROM sales_pakistan.sales
WHERE item_id IN (
    SELECT item_id
    FROM sales
    GROUP BY item_id
    HAVING COUNT(*) > 1
);

SELECT
    SUM(item_id IS NULL) AS item_id_null,
    SUM(status IS NULL) AS status_null,
    SUM(created_at IS NULL) AS created_at_null,
    SUM(sku IS NULL) AS sku_null,
    SUM(price IS NULL) AS price_null,
    SUM(qty_ordered IS NULL) AS qty_null,
    SUM(grand_total IS NULL) AS grand_total_null,
    SUM(category_name_1 IS NULL) AS category_null,
    SUM(payment_method IS NULL) AS payment_null,
    SUM(`Customer ID` IS NULL) AS customer_null
FROM sales_pakistan.sales;

SELECT
    SUM(TRIM(status) = '') AS blank_status,
    SUM(TRIM(sku) = '') AS blank_sku,
    SUM(TRIM(category_name_1) = '') AS blank_category,
    SUM(TRIM(payment_method) = '') AS blank_payment,
    SUM(TRIM(`Customer ID`) = '') AS blank_customer
FROM sales_pakistan.sales;

SELECT *
FROM sales_pakistan.sales
WHERE price < 0;

SELECT *
FROM sales_pakistan.sales
WHERE qty_ordered <= 0;

SELECT *
FROM sales_pakistan.sales
WHERE grand_total < 0;

SELECT *
FROM sales_pakistan.sales
WHERE discount_amount < 0;

SELECT
    item_id,
    price,
    qty_ordered,
    grand_total,
    discount_amount,
    (price * qty_ordered) AS calculated_amount
FROM sales_pakistan.sales
LIMIT 20;

SELECT
    item_id,
    price,
    qty_ordered,
    grand_total,
    discount_amount,
    (price * qty_ordered) - discount_amount AS expected_total
FROM sales_pakistan.sales
LIMIT 20;

SELECT
    TRIM(LOWER(status)) AS cleaned_status,
    COUNT(*) AS total
FROM sales_pakistan.sales
GROUP BY TRIM(LOWER(status))
ORDER BY total DESC;

SELECT
    TRIM(LOWER(payment_method)) AS cleaned_payment,
    COUNT(*) AS total
FROM sales_pakistan.sales
GROUP BY TRIM(LOWER(payment_method))
ORDER BY total DESC;

SELECT
    TRIM(category_name_1) AS cleaned_category,
    COUNT(*) AS total
FROM sales_pakistan.sales
GROUP BY TRIM(category_name_1)
ORDER BY total DESC;

SELECT
    COUNT(*) AS total_rows,
    COUNT(`Customer ID`) AS non_null_customers,
    COUNT(DISTINCT `Customer ID`) AS unique_customers
FROM sales_pakistan.sales;

SELECT *
FROM sales_pakistan.sales
WHERE created_at IS NULL;

SELECT
    MIN(created_at) AS first_date,
    MAX(created_at) AS last_date
FROM sales_pakistan.sales;

SELECT
    Year,
    COUNT(*) AS total
FROM sales_pakistan.sales
GROUP BY Year
ORDER BY Year;

SELECT *
FROM sales_pakistan.sales
WHERE Year <> YEAR(created_at);

SELECT *
FROM sales_pakistan.sales
WHERE Month <> MONTH(created_at);

SELECT
    ROUND(SUM(grand_total), 2) AS total_revenue
FROM sales_pakistan.sales;

SELECT
    COUNT(DISTINCT increment_id) AS total_orders
FROM sales_pakistan.sales;

SELECT
    SUM(qty_ordered) AS total_units_sold
FROM sales_pakistan.sales;

SELECT
    ROUND(
        SUM(grand_total) / COUNT(DISTINCT increment_id),
        2
    ) AS average_order_value
FROM sales_pakistan.sales;

SELECT
    ROUND(AVG(price), 2) AS average_price
FROM sales_pakistan.sales;

SELECT
    ROUND(SUM(discount_amount), 2) AS total_discount
FROM sales_pakistan.sales;

SELECT
    ROUND(AVG(discount_amount), 2) AS average_discount
FROM sales_pakistan.sales;

SELECT
    Year,
    ROUND(SUM(grand_total), 2) AS revenue
FROM sales_pakistan.sales
GROUP BY Year
ORDER BY Year;	

SELECT
    Year,
    Month,
    ROUND(SUM(grand_total), 2) AS revenue
FROM sales_pakistan.sales
GROUP BY Year, Month
ORDER BY Year, Month;

SELECT
    Year,
    Month,
    COUNT(DISTINCT increment_id) AS orders
FROM sales_pakistan.sales
GROUP BY Year, Month
ORDER BY Year, Month;

SELECT
    Year,
    Month,
    SUM(qty_ordered) AS units_sold
FROM sales_pakistan.sales
GROUP BY Year, Month
ORDER BY Year, Month;

SELECT
    Year,
    Month,
    ROUND(
        SUM(grand_total) /
        COUNT(DISTINCT increment_id),
        2
    ) AS AOV
FROM sales_pakistan.sales
GROUP BY Year, Month
ORDER BY Year, Month;

SELECT
    category_name_1 AS category,
    ROUND(SUM(grand_total), 2) AS revenue
FROM sales_pakistan.sales
GROUP BY category_name_1
ORDER BY revenue DESC;

SELECT
    category_name_1 AS category,
    SUM(qty_ordered) AS units_sold
FROM sales_pakistan.sales
GROUP BY category_name_1
ORDER BY units_sold DESC;

SELECT
    category_name_1 AS category,
    COUNT(DISTINCT increment_id) AS orders
FROM sales_pakistan.sales
GROUP BY category_name_1
ORDER BY orders DESC;

SELECT
    category_name_1 AS category,
    ROUND(SUM(grand_total), 2) AS revenue
FROM sales_pakistan.sales
GROUP BY category_name_1
ORDER BY revenue DESC
LIMIT 10;


SELECT
    sku,
    SUM(qty_ordered) AS units_sold
FROM sales_pakistan.sales
GROUP BY sku
ORDER BY units_sold DESC
LIMIT 10;

SELECT
    `Customer ID` AS customer_id,
    ROUND(SUM(grand_total), 2) AS total_spent
FROM sales_pakistan.sales
GROUP BY `Customer ID`
ORDER BY total_spent DESC
LIMIT 10;

SELECT
    `Customer ID` AS customer_id,
    COUNT(DISTINCT increment_id) AS total_orders
FROM sales_pakistan.sales
GROUP BY `Customer ID`
ORDER BY total_orders DESC;

SELECT
    ROUND(AVG(customer_spend), 2) AS average_customer_spend
FROM (
    SELECT
        `Customer ID`,
        SUM(grand_total) AS customer_spend
    FROM sales_pakistan.sales
    GROUP BY `Customer ID`
) AS customer_data;

SELECT
    `Customer ID` AS customer_id,
    COUNT(DISTINCT increment_id) AS total_orders
FROM sales_pakistan.sales
GROUP BY `Customer ID`
ORDER BY total_orders DESC;

SELECT
    ROUND(AVG(customer_spend), 2) AS average_customer_spend
FROM (
    SELECT
        `Customer ID`,
        SUM(grand_total) AS customer_spend
    FROM sales_pakistan.sales
    GROUP BY `Customer ID`
) AS customer_data;

SELECT
    payment_method,
    COUNT(DISTINCT increment_id) AS orders
FROM sales_pakistan.sales
GROUP BY payment_method
ORDER BY orders DESC;

SELECT
    payment_method,
    ROUND(SUM(grand_total), 2) AS revenue
FROM sales_pakistan.sales
GROUP BY payment_method
ORDER BY revenue DESC;

SELECT
    payment_method,
    ROUND(
        SUM(grand_total) /
        COUNT(DISTINCT increment_id),
        2
    ) AS AOV
FROM sales_pakistan.sales
GROUP BY payment_method
ORDER BY AOV DESC;

SELECT
    status,
    COUNT(*) AS records
FROM sales_pakistan.sales
GROUP BY status
ORDER BY records DESC;

SELECT
    status,
    ROUND(SUM(grand_total), 2) AS revenue
FROM sales_pakistan.sales
GROUP BY status
ORDER BY revenue DESC;

SELECT
    ROUND(SUM(grand_total), 2) AS total_revenue,
    COUNT(DISTINCT increment_id) AS total_orders,
    COUNT(DISTINCT `Customer ID`) AS total_customers,
    SUM(qty_ordered) AS units_sold,
    ROUND(
        SUM(grand_total) /
        COUNT(DISTINCT increment_id),
        2
    ) AS average_order_value,
    ROUND(SUM(discount_amount), 2) AS total_discount
FROM sales_pakistan.sales;

WITH monthly_sales AS (
    SELECT
        Year,
        Month,
        SUM(grand_total) AS revenue
    FROM sales_pakistan.sales
    GROUP BY Year, Month
)
SELECT
    Year,
    Month,
    ROUND(revenue, 2) AS revenue,
    LAG(revenue) OVER (
        ORDER BY Year, Month
    ) AS previous_month_revenue,
    ROUND(
        (
            revenue - LAG(revenue) OVER (
                ORDER BY Year, Month
            )
        )
        / NULLIF(
            LAG(revenue) OVER (
                ORDER BY Year, Month
            ), 0
        ) * 100,
        2
    ) AS mom_growth_pct
FROM monthly_sales
ORDER BY Year, Month;

WITH monthly_sales AS (
    SELECT
        Year,
        Month,
        SUM(grand_total) AS revenue
    FROM sales_pakistan.sales
    GROUP BY Year, Month
)
SELECT
    Year,
    Month,
    ROUND(revenue, 2) AS monthly_revenue,

    ROUND(
        SUM(revenue) OVER (
            ORDER BY Year, Month
        ),
        2
    ) AS running_revenue

FROM monthly_sales
ORDER BY Year, Month;

WITH monthly_sales AS (
    SELECT
        Year,
        Month,
        SUM(grand_total) AS revenue
    FROM sales_pakistan.sales
    GROUP BY Year, Month
)
SELECT
    Year,
    Month,
    ROUND(revenue, 2) AS revenue,
    ROUND(
        revenue /
        NULLIF(SUM(revenue) OVER (), 0) * 100,
        2
    ) AS revenue_contribution_pct
FROM monthly_sales
ORDER BY Year, Month;

WITH monthly_sales AS (
    SELECT
        Year,
        Month,
        SUM(grand_total) AS revenue,
        COUNT(DISTINCT increment_id) AS orders
    FROM sales_pakistan.sales
    GROUP BY Year, Month
),
monthly_metrics AS (
    SELECT
        Year,
        Month,
        revenue,
        orders,
        revenue / NULLIF(orders, 0) AS aov
    FROM monthly_sales
)
SELECT
    Year,
    Month,
    ROUND(revenue, 2) AS revenue,
    orders,
    ROUND(aov, 2) AS aov,

    ROUND(
        (
            revenue - LAG(revenue) OVER (
                ORDER BY Year, Month
            )
        )
        / NULLIF(
            LAG(revenue) OVER (
                ORDER BY Year, Month
            ), 0
        ) * 100,
        2
    ) AS mom_growth_pct

FROM monthly_metrics
ORDER BY Year, Month;

WITH monthly_sales AS (
    SELECT
        Year,
        Month,
        SUM(grand_total) AS revenue
    FROM sales_pakistan.sales
    GROUP BY Year, Month
)
SELECT
    Year,
    Month,
    ROUND(revenue, 2) AS revenue
FROM monthly_sales
ORDER BY revenue DESC
LIMIT 1;

WITH monthly_sales AS (
    SELECT
        Year,
        Month,
        SUM(grand_total) AS revenue
    FROM sales_pakistan.sales
    GROUP BY Year, Month
)
SELECT
    Year,
    Month,
    ROUND(revenue, 2) AS revenue
FROM monthly_sales
ORDER BY revenue ASC
LIMIT 1;

SELECT
    sku,
    SUM(qty_ordered) AS total_units,
    SUM(grand_total) AS revenue,
    COUNT(DISTINCT increment_id) AS total_orders,
    ROUND(
        SUM(grand_total) / NULLIF(SUM(qty_ordered), 0),
        2
    ) AS avg_selling_price
FROM sales_pakistan.sales
GROUP BY sku
ORDER BY revenue DESC;

SELECT
    sku,
    SUM(qty_ordered) AS total_units,
    ROUND(SUM(grand_total), 2) AS revenue
FROM sales_pakistan.sales
GROUP BY sku
ORDER BY revenue DESC
LIMIT 10;

WITH sku_sales AS (
    SELECT
        sku,
        SUM(grand_total) AS revenue
    FROM sales_pakistan.sales
    GROUP BY sku
)
SELECT
    sku,
    ROUND(revenue, 2) AS revenue,
    ROUND(
        revenue /
        NULLIF(SUM(revenue) OVER (), 0) * 100,
        2
    ) AS revenue_contribution_pct
FROM sku_sales
ORDER BY revenue DESC;

WITH sku_sales AS (
    SELECT
        sku,
        SUM(grand_total) AS revenue
    FROM sales_pakistan.sales
    GROUP BY sku
)
SELECT
    sku,
    ROUND(revenue, 2) AS revenue,
    RANK() OVER (
        ORDER BY revenue DESC
    ) AS sku_rank
FROM sku_sales
ORDER BY sku_rank;

WITH sku_sales AS (
    SELECT
        category_name_1,
        sku,
        SUM(grand_total) AS revenue
    FROM sales_pakistan.sales
    GROUP BY category_name_1, sku
),
ranked_skus AS (
    SELECT
        category_name_1,
        sku,
        revenue,

        DENSE_RANK() OVER (
            PARTITION BY category_name_1
            ORDER BY revenue DESC
        ) AS sku_rank

    FROM sku_sales
)
SELECT
    category_name_1,
    sku,
    ROUND(revenue, 2) AS revenue,
    sku_rank
FROM ranked_skus
WHERE sku_rank <= 3
ORDER BY category_name_1, sku_rank;

WITH sku_sales AS (
    SELECT
        sku,
        SUM(grand_total) AS revenue
    FROM sales_pakistan.sales
    GROUP BY sku
)
SELECT
    sku,
    ROUND(revenue, 2) AS revenue
FROM sku_sales
WHERE revenue > (
    SELECT AVG(revenue)
    FROM sku_sales
)
ORDER BY revenue DESC;

WITH sku_sales AS (
    SELECT
        sku,
        SUM(grand_total) AS revenue
    FROM sales_pakistan.sales
    GROUP BY sku
)
SELECT
    sku,
    ROUND(revenue, 2) AS revenue
FROM sku_sales
WHERE revenue > (
    SELECT AVG(revenue)
    FROM sku_sales
)
ORDER BY revenue DESC;

WITH category_sales AS (
    SELECT
        category_name_1,
        SUM(grand_total) AS revenue
    FROM sales_pakistan.sales
    GROUP BY category_name_1
)
SELECT
    category_name_1,
    ROUND(revenue, 2) AS revenue,
    ROUND(
        revenue /
        NULLIF(SUM(revenue) OVER (), 0) * 100,
        2
    ) AS revenue_contribution_pct
FROM category_sales
ORDER BY revenue DESC;

WITH category_sales AS (
    SELECT
        category_name_1,
        SUM(grand_total) AS revenue
    FROM sales_pakistan.sales
    GROUP BY category_name_1
)
SELECT
    category_name_1,
    ROUND(revenue, 2) AS revenue,
    RANK() OVER (
        ORDER BY revenue DESC
    ) AS category_rank
FROM category_sales
ORDER BY category_rank;

WITH category_sales AS (
    SELECT
        category_name_1,
        SUM(grand_total) AS revenue
    FROM sales_pakistan.sales
    GROUP BY category_name_1
),
ranked_categories AS (
    SELECT
        category_name_1,
        revenue,
        DENSE_RANK() OVER (
            ORDER BY revenue DESC
        ) AS category_rank
    FROM category_sales
)
SELECT
    category_name_1,
    ROUND(revenue, 2) AS revenue,
    category_rank
FROM ranked_categories
WHERE category_rank <= 5
ORDER BY category_rank;

WITH category_sales AS (
    SELECT
        category_name_1,
        SUM(grand_total) AS revenue
    FROM sales_pakistan.sales
    GROUP BY category_name_1
)
SELECT
    category_name_1,
    ROUND(revenue, 2) AS revenue,
    ROUND(
        SUM(revenue) OVER (
            ORDER BY revenue DESC
        ),
        2
    ) AS cumulative_revenue
FROM category_sales
ORDER BY revenue DESC;

WITH sku_sales AS (
    SELECT
        category_name_1,
        sku,
        SUM(grand_total) AS revenue
    FROM sales_pakistan.sales
    GROUP BY category_name_1, sku
),
ranked AS (
    SELECT
        category_name_1,
        sku,
        revenue,

        DENSE_RANK() OVER (
            PARTITION BY category_name_1
            ORDER BY revenue DESC
        ) AS sku_rank

    FROM sku_sales
)
SELECT
    category_name_1,
    sku,
    ROUND(revenue, 2) AS revenue,
    sku_rank
FROM ranked
WHERE sku_rank <= 5
ORDER BY category_name_1, sku_rank;

SELECT
    `Customer ID` AS customer_id,
    COUNT(DISTINCT increment_id) AS total_orders,
    ROUND(SUM(grand_total), 2) AS lifetime_value
FROM sales_pakistan.sales
GROUP BY `Customer ID`
ORDER BY lifetime_value DESC;

WITH customer_sales AS (
    SELECT
        `Customer ID` AS customer_id,
        SUM(grand_total) AS total_spent
    FROM sales_pakistan.sales
    GROUP BY `Customer ID`
)
SELECT
    customer_id,
    ROUND(total_spent, 2) AS total_spent,
    CASE
        WHEN total_spent >= 50000 THEN 'High Value'
        WHEN total_spent >= 20000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS customer_segment
FROM customer_sales
ORDER BY total_spent DESC;

WITH customer_orders AS (
    SELECT
        `Customer ID`,
        COUNT(DISTINCT increment_id) AS total_orders
    FROM sales_pakistan.sales
    GROUP BY `Customer ID`
)
SELECT
    CASE
        WHEN total_orders = 1 THEN 'One-Time Customer'
        ELSE 'Repeat Customer'
    END AS customer_type,
    COUNT(*) AS customers
FROM customer_orders
GROUP BY customer_type;

SELECT
    `Customer ID` AS customer_id,
    ROUND(SUM(grand_total), 2) AS total_spent
FROM sales_pakistan.sales
GROUP BY `Customer ID`
ORDER BY total_spent DESC
LIMIT 10;

SELECT
    CASE
        WHEN discount_amount = 0 THEN 'No Discount'
        WHEN discount_amount > 0 THEN 'Discount Applied'
        ELSE 'Other'
    END AS discount_status,
    COUNT(DISTINCT increment_id) AS orders,
    ROUND(SUM(grand_total), 2) AS revenue
FROM sales_pakistan.sales
GROUP BY discount_status;

SELECT
    payment_method,
    COUNT(DISTINCT increment_id) AS orders,
    ROUND(SUM(grand_total), 2) AS revenue
FROM sales_pakistan.sales
GROUP BY payment_method
ORDER BY revenue DESC;

SELECT
    status,
    COUNT(DISTINCT increment_id) AS orders,
    ROUND(SUM(grand_total), 2) AS revenue
FROM sales_pakistan.sales
GROUP BY status
ORDER BY revenue DESC;

WITH category_sales AS (
    SELECT
        category_name_1 AS category,
        SUM(grand_total) AS revenue
    FROM sales_pakistan.sales
    GROUP BY category_name_1
)
SELECT
    category,
    ROUND(revenue, 2) AS revenue,
    ROUND(
        revenue / SUM(revenue) OVER () * 100,
        2
    ) AS contribution_pct
FROM category_sales
ORDER BY revenue DESC;

