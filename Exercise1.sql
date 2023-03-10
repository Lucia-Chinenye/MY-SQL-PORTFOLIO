CREATE TABLE customers(customer_id int PRIMARY KEY,
	name VARCHAR (50) NOT NULL,
	email VARCHAR (50) NOT NULL,
	phone VARCHAR(50) NOT NULL);
	
CREATE TABLE orders(order_id int PRIMARY KEY,
		customer_id int NOT NULL,
	    order_date DATE NOT NULL,
		product_id int NOT NULL,
		quantity int NOT NULL,
		delivery_status VARCHAR NOT NULL,
		FOREIGN KEY(customer_id) references customers(customer_id),
		FOREIGN KEY (product_id) references customers(customer_id));
					
	CREATE TABLE products(
			product_id int PRIMARY KEY,
			name VARCHAR (50) NOT NULL,
			description VARCHAR (50) NOT NULL,
			category int NOT NULL,
			price NUMERIC(10,2) NOT NULL);
				
	CREATE TABLE payment(payment_id int PRIMARY KEY,
					   order_id int NOT NULL,
					   payment_date DATE NOT NULL,
					   FOREIGN KEY (order_id) references orders(order_id));
	