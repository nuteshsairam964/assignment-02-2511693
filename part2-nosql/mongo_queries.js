// OP1: insertMany() — insert all 3 documents
db.products.insertMany([
{
name: "iPhone 14",
category: "Electronics",
price: 70000,
warranty: "1 year"
},
{
name: "T-Shirt",
category: "Clothing",
price: 800,
size: "L"
},
{
name: "Milk",
category: "Groceries",
price: 60,
expiry_date: "2025-01-01"
}
]);

// OP2: find Electronics products with price > 20000
db.products.find({category:"Electronics", price:{$gt:20000}});

// OP3: find groceries expiring before 2025
db.products.find({category:"Groceries", expiry_date:{$lt:"2025-01-01"}});

// OP4: updateOne() — add discount field
db.products.updateOne(
{name:"iPhone 14"},
{$set:{discount_percent:10}}
);

// OP5: create index on category
db.products.createIndex({category:1});
