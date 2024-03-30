USE ssb;
CREATE TABLE LINEORDER
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

CREATE TABLE PART
(
P_PARTKEY INTEGER NOT NULL,    
P_NAME VARCHAR(55) NOT NULL,
P_MFGR VARCHAR(25) NOT NULL,
P_BRAND VARCHAR(10) NOT NULL,
P_TYPE VARCHAR(25) NOT NULL,
P_SIZE INTEGER NOT NULL,    
P_CONTAINER VARCHAR(10) NOT NULL,
P_RETAILPRICE DECIMAL(15,2) NOT NULL,
P_SUPPKEY INTEGER NOT NULL,
P_AVAILQTY INTEGER NOT NULL,
P_SUPPLYCOST DECIMAL(15,2) NOT NULL,
PRIMARY KEY ( P_PARTKEY,P_SUPPKEY ));

CREATE TABLE CUSTOMER
(
C_CUSTKEY INTEGER NOT NULL,    
C_NAME VARCHAR(25) NOT NULL,
C_ADDRESS VARCHAR(40) NOT NULL,
C_NATION VARCHAR(25) NOT NULL,
C_REGION VARCHAR(25) NOT NULL,
C_PHONE VARCHAR(15) NOT NULL,
C_ACCTBAL DECIMAL(15,2) NOT NULL,    
C_MKTSEGMENT VARCHAR(10) NOT NULL,
PRIMARY KEY ( C_CUSTKEY ));

CREATE TABLE SUPPLIER
(
S_SUPPKEY INTEGER NOT NULL,    
S_NAME VARCHAR(25) NOT NULL,
S_ADDRESS VARCHAR(40) NOT NULL,
S_NATION VARCHAR(25) NOT NULL,
S_REGION VARCHAR(25) NOT NULL,
S_PHONE VARCHAR(15) NOT NULL,
S_ACCTBAL DECIMAL(15,2) NOT NULL,
S_COMMENT VARCHAR(101) NOT NULL, 
PRIMARY KEY ( S_SUPPKEY ));

