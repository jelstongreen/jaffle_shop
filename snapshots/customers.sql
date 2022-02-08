{% snapshot customers_snapshot %}

{{
    config(
      unique_key='id',
      strategy='check',
      check_cols=['first_name','last_name'],
      invalidate_hard_deletes=True,
    )
}}

select

*

from {{ ref('raw_customers') }}

{% endsnapshot %}