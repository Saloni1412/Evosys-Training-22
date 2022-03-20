SELECT
    *
FROM
    (
        SELECT
            product_id,
            product_name,
            list_price
        FROM
            products
        ORDER BY
            list_price DESC
    )
WHERE
    ROWNUM <= 10;


---Inline view joins with a table example
SELECT
    category_name,
    max_list_price
FROM
    product_categories a,
    (
        SELECT
            category_id,
            MAX( list_price ) max_list_price
        FROM
            products
        GROUP BY
            category_id
    ) b
WHERE
    a.category_id = b.category_id
ORDER BY
    category_name;

---LATERAL inline view example
SELECT
    category_name,
    product_name
FROM
    products p,
    (
        SELECT
            *
        FROM
            product_categories c
        WHERE
            c.category_id = p.category_id
    )
ORDER BY
    product_name;

---to resolve the error of category_id
SELECT
    product_name,
    category_name
FROM
    products p,
    LATERAL(
        SELECT
            *
        FROM
            product_categories c
        WHERE
            c.category_id = p.category_id
    )
ORDER BY
    product_name;

---Oracle inline view: data manipulation examples
UPDATE
    (
        SELECT
            list_price
        FROM
            products
        INNER JOIN product_categories using (category_id)
        WHERE
            category_name = 'CPU'
    )
SET
    list_price = list_price * 1.15; 
 
---this query will delete all video cards with list price less than 1000;
DELETE
    (
        SELECT
            list_price
        FROM
            products
        INNER JOIN product_categories
                USING(category_id)
        WHERE
            category_name = 'Video Card'
    )
WHERE
    list_price < 1000; 

    

