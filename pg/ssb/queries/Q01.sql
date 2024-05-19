-- USING DEFAULT SUBSTITUTIONS
/* QUERY 01 - STARBENCH - PRICING SUMMARY REPORT QUERY   */
SELECT /* DSS_01.SQL */
        OD_RETURNFLAG, 
        OD_LINESTATUS,
        CAST(SUM(OD_QUANTITY) AS DECIMAL(18,2)) AS SUM_QTY,
        CAST(SUM(OD_EXTENDEDPRICE) AS DECIMAL(18,2)) AS SUM_BASE_PRICE,
        CAST(SUM(OD_EXTENDEDPRICE*(1-OD_DISCOUNT)) AS DECIMAL(18,2)) AS SUM_DISC_PRICE,
        CAST(SUM(OD_EXTENDEDPRICE*(1-OD_DISCOUNT)*(1+OD_TAX)) AS DECIMAL(18,2)) AS SUM_CHARGE,
        CAST(AVG(OD_QUANTITY) AS DECIMAL(18,2)) AS AVG_QTY,
        CAST(AVG(OD_EXTENDEDPRICE) AS DECIMAL(18,2)) AS AVG_PRICE,
        CAST(AVG(OD_DISCOUNT) AS DECIMAL(18,2)) AS AVG_DISC,
        COUNT(*) AS COUNT_ORDER
FROM 
        ssb2.ORDER_DETAIL
WHERE
        OD_SHIPDATE <= DATE '1998-12-01' - INTERVAL '90' DAY
GROUP BY
        OD_RETURNFLAG,
        OD_LINESTATUS
ORDER BY
        OD_RETURNFLAG,
        OD_LINESTATUS;

