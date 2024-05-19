-- USING 12345 AS A SEED TO THE RNG


SELECT
	C_NAME,
	C_CUSTKEY,
	O_ORDERKEY,
	O_ORDERDATE,
	O_TOTALPRICE,
	SUM(L_QUANTITY)
FROM
	tpch.CUSTOMER,
	tpch.ORDERS,
	tpch.LINEITEM
WHERE
	O_ORDERKEY IN (
		SELECT
			L_ORDERKEY
		FROM
			tpch.LINEITEM
		GROUP BY
			L_ORDERKEY HAVING
				SUM(L_QUANTITY) > 313
	)
	AND C_CUSTKEY = O_CUSTKEY
	AND O_ORDERKEY = L_ORDERKEY
GROUP BY
	C_NAME,
	C_CUSTKEY,
	O_ORDERKEY,
	O_ORDERDATE,
	O_TOTALPRICE
ORDER BY
	O_TOTALPRICE DESC,
	O_ORDERDATE;
