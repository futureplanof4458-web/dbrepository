{% macro mcr_mkt(column_name) %}
    case when {{column_name}} in ('HOUSEHOLD','BUILDING','FURNITURE') then 'mkt_1'
         when {{column_name}} in ('AUTOMOBILE','MACHINERY') then 'mkt_2'
         else 'mkt_3'
         end as c_mktsegment
{% endmacro %}