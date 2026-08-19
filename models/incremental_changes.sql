{{
    config(
        materialized='incremental',
        unique_key='empno'
    )
}}
select empno,ename,deptno,sal,d_upd_Date from {{ source('s1', 's_emp') }}
{% if is_incremental() %}
    -- this filter will only be applied on an incremental run
    where d_upd_Date > (select max(d_upd_Date) from {{ this }}) 
{% endif %}