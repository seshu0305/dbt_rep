SELECT 
  C.customer_id,
  C.customer_city,
  C.customer_state,
  OI.PRICE,
  O.order_id,
  {{ get_date_parts('O.ORDER_PURCHASE_TIMESTAMP') }} AS date_extract
FROM 
  DBT_SC.CUSTOMER_NEW C
JOIN
  DBT_SC.ORDERS O ON C.customer_id = O.customer_id
JOIN
  DBT_SC.ORDERITEMS OI ON O.order_id = OI.order_id
