drop table ssb2_temp.lineorder;
CREATE TABLE ssb2_temp.LINEORDER
(
LO_ORDERKEY INTEGER NOT NULL,    
LO_PARTKEY INTEGER NOT NULL,    
LO_SUPPKEY INTEGER NOT NULL,    
LO_LINENUMBER INTEGER NOT NULL,    
LO_QUANTITY INTEGER NOT NULL,    
LO_EXTENDEDPRICE DECIMAL(15,2) NOT NULL,    
LO_DISCOUNT DECIMAL(15,2) NOT NULL,    
LO_TAX DECIMAL(15,2) NOT NULL,        
LO_RETURNFLAG CHAR(1) NOT NULL,
LO_LINESTATUS CHAR(1) NOT NULL,
LO_SHIPDATE DATE NOT NULL,  
LO_COMMITDATE DATE NOT NULL,  
LO_RECEIPTDATE DATE NOT NULL,  
LO_SHIPINSTRUCT VARCHAR(25) NOT NULL,
LO_SHIPMODE VARCHAR(10) NOT NULL,
LO_CUSTKEY INTEGER NOT NULL,    
LO_ORDERSTATUS VARCHAR(1) NOT NULL,
LO_TOTALPRICE DECIMAL(15,2) NOT NULL,    
LO_ORDERDATE DATE NOT NULL,  
LO_ORDERPRIORITY VARCHAR(15) NOT NULL,
LO_CLERK VARCHAR(15) NOT NULL,
LO_SHIPPRIORITY INTEGER NOT NULL,    
LO_COMMENT VARCHAR(79) NOT NULL,
PRIMARY KEY ( LO_ORDERKEY,LO_LINENUMBER )); 


insert into ssb2_temp.LINEORDER
select
l.L_ORDERKEY,
l.L_PARTKEY,
l.L_SUPPKEY,
l.L_LINENUMBER,
l.L_QUANTITY,
l.L_EXTENDEDPRICE,
l.L_DISCOUNT,
l.L_TAX,
l.L_RETURNFLAG,
l.L_LINESTATUS,
l.L_SHIPDATE,
l.L_COMMITDATE,
l.L_RECEIPTDATE,
l.L_SHIPINSTRUCT,
l.L_SHIPMODE,
o.O_CUSTKEY,
o.O_ORDERSTATUS,
o.O_TOTALPRICE,
o.O_ORDERDATE,
o.O_ORDERPRIORITY,
o.O_CLERK,
o.O_SHIPPRIORITY,
o.O_COMMENT
from tpch.LINEITEM l inner join tpch.ORDERS o on l.L_ORDERKEY = o.O_ORDERKEY;

/usr/local/pgsql/bin/psql postgres < ./starbench_RF1.ddl

/usr/local/pgsql/bin/psql postgres < ./ins-sel_RF1.sql

/usr/local/pgsql/bin/psql postgres < ./update_lineorder.sql
