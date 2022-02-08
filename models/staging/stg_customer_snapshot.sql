WITH stg_customer AS (
    SELECT
      {{ hash_sensitive_columns('stg_customer_snapshot_base') }}
    FROM {{ ref('stg_customer_snapshot_base') }}
)

SELECT *
FROM stg_customer
