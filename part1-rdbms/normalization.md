## Anomaly Analysis

### Insert Anomaly
In the orders_flat dataset, product and order information are stored together. If a new product needs to be added but no order has been placed yet, the product cannot be inserted without creating an order record.

### Update Anomaly
If a customer's city changes, the same information must be updated in multiple rows where that customer appears. This can lead to inconsistent data if some rows are not updated.

### Delete Anomaly
If the last order for a customer is deleted, the customer information may also be removed from the dataset, resulting in loss of important data.


## Normalization Justification

The dataset was normalized to Third Normal Form (3NF) to remove redundancy and ensure data consistency. Separate tables were created for customers, products, sales representatives, orders, and order items. Primary keys uniquely identify records, and foreign keys maintain relationships between tables. This structure reduces duplication and prevents anomalies during insert, update, and delete operations.
