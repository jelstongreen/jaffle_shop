    SELECT
           dbt_scd_id as customer_snapshot_id,
           id,
           first_name,
           last_name
    FROM {{ ref('customers_snapshot') }}
