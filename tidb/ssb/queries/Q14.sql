-- using 12345 as a seed to the RNG
/* Query 14 - StarBench - Promotion Effect Query */
SELECT
        CAST(100.00*SUM(CASE 
                WHEN P_TYPE LIKE 'PROMO%'
                THEN OD_EXTENDEDPRICE*(1-OD_DISCOUNT) 
                ELSE 0 
        END ) / SUM(OD_EXTENDEDPRICE*(1-OD_DISCOUNT)) AS DECIMAL (18,2)) AS PROMO_REVENUE
FROM 
        ORDER_DETAIL,
        PART
WHERE
        OD_PARTKEY = P_PARTKEY
        AND OD_SHIPDATE >= '1997-12-01'
        AND OD_SHIPDATE < DATE '1997-12-01' + INTERVAL '1' MONTH;

