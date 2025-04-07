SELECT 
C.customer_id ,
C.customer_city,
C.customer_state,
OI.PRICE,
O.order_id,
O.order_purchase_timestamp
FROM 
DBT_SC.CUSTOMER_NEW C
JOIN
DBT_SC.ORDERS O ON C.customer_id = O.customer_id
JOIN
DBT_SC.ORDERITEMS OI ON O.order_id = OI.order_id