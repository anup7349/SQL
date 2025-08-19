
create database dmart;
use dmart;

CREATE TABLE store (
    store_id INT PRIMARY KEY,                      
    store_code INT UNIQUE NOT NULL,                
    store_name VARCHAR(50) NOT NULL,              
    opened_date DATE NOT NULL,                   
    opening_time TIME,                              
    avg_customer_age INT CHECK(avg_customer_age > 18),             
    store_type CHAR(1),                            
    contact BIGINT UNIQUE,                        
    address VARCHAR(100) NOT NULL,            
    rating FLOAT DEFAULT 0.0,                    
    is_active BOOLEAN DEFAULT TRUE  
);

CREATE TABLE product (
    product_id INT PRIMARY KEY,                   
    product_code INT UNIQUE NOT NULL,            
    product_name VARCHAR(50) NOT NULL,            
    mfg_date DATE NOT NULL,                          
    exp_time TIME,                              
    shelf_life INT CHECK(shelf_life > 0),                      
    category CHAR(1),                              
    barcode BIGINT UNIQUE,                          
    price DOUBLE CHECK(price >= 0),            
    discount FLOAT DEFAULT 0.0,                
    is_featured BOOLEAN DEFAULT FALSE,             
    store_id INT,                                  
    FOREIGN KEY (store_id) REFERENCES store(store_id) 
);

INSERT INTO store (store_id, store_code, store_name, opened_date, opening_time, avg_customer_age, store_type, contact, address, rating, is_active)
VALUES
(1,201,'Dmart Mumbai','2010-05-01','09:00:00',30,'R',9876501001,'Andheri, Mumbai',8.5,TRUE),
(2,202,'Dmart Pune','2012-07-15','10:00:00',32,'R',9876501002,'Kothrud, Pune',9.0,TRUE),
(3,203,'Dmart Bangalore','2014-08-10','08:30:00',28,'R',9876501003,'Whitefield, Bangalore',8.8,TRUE),
(4,204,'Dmart Hyderabad','2016-09-05','09:30:00',27,'R',9876501004,'Madhapur, Hyderabad',8.3,TRUE),
(5,205,'Dmart Chennai','2018-11-20','09:45:00',29,'R',9876501005,'T. Nagar, Chennai',8.0,TRUE),
(6,206,'Dmart Delhi','2020-01-01','10:30:00',31,'R',9876501006,'Dwarka, Delhi',7.9,TRUE),
(7,207,'Dmart Jaipur','2021-03-10','09:15:00',28,'R',9876501007,'Vaishali Nagar, Jaipur',7.8,TRUE),
(8,208,'Dmart Kolkata','2021-06-25','08:45:00',30,'R',9876501008,'Salt Lake, Kolkata',8.1,TRUE),
(9,209,'Dmart Lucknow','2022-09-01','10:00:00',27,'R',9876501009,'Gomti Nagar, Lucknow',7.7,TRUE),
(10,210,'Dmart Ahmedabad','2023-02-15','09:20:00',29,'R',9876501010,'Maninagar, Ahmedabad',8.6,TRUE);

INSERT INTO product (product_id, product_code, product_name, mfg_date, exp_time, shelf_life, category, barcode, price, discount, is_featured, store_id)
VALUES
(1,301,'Parle-G Biscuits','2023-01-01','10:00:00',12,'F',9876511001,50.00,5.0,FALSE,1),
(2,302,'Amul Milk','2023-01-15','11:00:00',7,'F',9876511002,60.00,2.0,TRUE,2),
(3,303,'Tata Salt','2022-12-01','09:30:00',365,'F',9876511003,30.00,0.0,TRUE,3),
(4,304,'Surf Excel Detergent','2022-11-10','08:00:00',730,'H',9876511004,200.00,10.0,FALSE,4),
(5,305,'Colgate Toothpaste','2022-10-01','09:00:00',540,'H',9876511005,120.00,8.0,TRUE,5),
(6,306,'Fortune Oil','2022-12-20','08:15:00',180,'F',9876511006,180.00,5.0,FALSE,6),
(7,307,'Red Label Tea','2022-09-25','10:30:00',720,'F',9876511007,250.00,7.0,FALSE,7),
(8,308,'Maggi Noodles','2022-08-30','11:15:00',270,'F',9876511008,70.00,3.0,TRUE,8),
(9,309,'Dettol Soap','2022-07-01','09:45:00',540,'H',9876511009,90.00,6.0,TRUE,9),
(10,310,'Kissan Jam','2022-06-10','08:50:00',365,'F',9876511010,150.00,4.0,FALSE,10);


select * from store where avg_customer_age in(27,29);
select * from store where store_code in(203,208);
select * from store where store_name in('Dmart Chennai','Dmart Delhi');
select * from store where address in('Kothrud, Pune','Vaishali Nagar, Jaipur');

select * from store where avg_customer_age not in(27,29);
select * from store where store_code not in(203,208);
select * from store where store_name not in('Dmart Chennai','Dmart Delhi');
select * from store where address not in('Kothrud, Pune','Vaishali Nagar, Jaipur');

select * from store where store_name is null;
select * from store where opening_time is null;
select * from store where contact is null;
select * from store where rating is null;

select * from store where store_type is not null;
select * from store where opened_date is not null;
select * from store where store_id is not null;
select * from store where opening_time is not null;

select * from store where store_name like 'D%';
select * from store where store_name like '%i';
select * from store where store_name like '__m%';

select * from store where avg_customer_age between 28 and 30;

select store_name as name from store;
select store_id as id from store;
select contact as phone_no from store;
select address as location from store;

select * from store order by avg_customer_age desc;
select * from store order by store_name desc;
select * from store order by opening_time;
