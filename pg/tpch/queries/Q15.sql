-- USING 12345 AS A SEED TO THE RNG

CREATE VIEW REVENUE0 (SUPPLIER_NO, TOTAL_REVENUE) AS
	SELECT
		L_SUPPKEY,
		SUM(L_EXTENDEDPRICE * (1 - L_DISCOUNT))
	FROM
		tpch.LINEITEM
	WHERE
		L_SHIPDATE >= DATE '1993-09-01'
		AND L_SHIPDATE < DATE '1993-09-01' + INTERVAL '3' MONTH
	GROUP BY
		L_SUPPKEY;


SELECT
	S_SUPPKEY,
	S_NAME,
	S_ADDRESS,
	S_PHONE,
	TOTAL_REVENUE
FROM
	tpch.SUPPLIER,
	REVENUE0
WHERE
	S_SUPPKEY = SUPPLIER_NO
	AND TOTAL_REVENUE = (
		SELECT
			MAX(TOTAL_REVENUE)
		FROM
			REVENUE0
	)
ORDER BY
	S_SUPPKEY;

DROP VIEW REVENUE0;
