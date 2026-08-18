{% snapshot scd_type_2 %}
    {{
        config(
            target_schema='silver',
            target_database='dev_db',
            unique_key='TICKET_ID',
            strategy='check',
            check_cols=['status']
        )
    }}

    select * from {{ source('s1', 't_ticket_info') }}
 {% endsnapshot %}