{% snapshot address_snapshot_check %}
{{
config
(
  target_schema='snapshots',
  strategy = 'check',
  unique_key='C_CUSTKEY', 
  check_cols= ['C_ADDRESS'],
)
}}
SELECT * FROM DBT_SC.CUSTOMER
{% endsnapshot %}