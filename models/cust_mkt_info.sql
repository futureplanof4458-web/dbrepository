select c_custkey,c_name,{{mcr_mkt('c_mktsegment')}}
from dev_Db.bronze.t_customer