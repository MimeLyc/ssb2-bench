#!/bin/bash
# run tpch queries
for i in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22
do
	/usr/local/pgsql/bin/psql postgres < tpch/queries/Q${i}.sql &> OUT/tpch/Q${i}.out
done

# run ssb queries
for i in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22
do
	/usr/local/pgsql/bin/psql postgres < ssb2/queries/Q${i}.sql &> OUT/ssb2/Q${i}.out
done

./parse_timings.sh OUT
./verify_results.sh OUT
