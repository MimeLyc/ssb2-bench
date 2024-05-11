drop table ssb2_temp.LINEORDER_RF1;
CREATE TABLE ssb2_temp.LINEORDER_RF1
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


