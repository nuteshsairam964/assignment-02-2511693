## System Architecture Design

The hospital analytics system is designed to support patient monitoring, predictive analytics, and decision support for doctors.

### Storage Systems

PostgreSQL is used as the OLTP database to store transactional patient data such as admissions, treatments, and medical records. A Data Lake is used to store large volumes of raw data such as sensor readings and historical medical records. A Data Warehouse is used to support analytical queries and reporting for hospital management.

### AI and Vector Databases

A vector database is used to support semantic search for medical documents and doctor queries. Machine learning models are used to predict patient readmission risk based on historical data.

### OLTP vs OLAP Boundary

The OLTP system handles real-time hospital operations such as patient admissions and treatment updates. The OLAP system is used for analytics, reporting, and predictive modeling.

### Trade-offs

Real-time data processing increases system complexity and infrastructure requirements. However, using streaming pipelines and scalable storage systems helps mitigate these challenges while ensuring timely insights for doctors and hospital administrators.
