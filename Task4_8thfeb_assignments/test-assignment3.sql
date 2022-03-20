CREATE TABLE brands
( Brand_id number(10) NOT NULL,  
  Brand_name varchar2(50) NOT NULL,
  CONSTRAINT my_brand_id PRIMARY KEY (brand_id)  
);
INSERT INTO brands VALUES(1,'Audi');
INSERT INTO brands VALUES(2,'BMW');
INSERT INTO brands VALUES(3,'Ford');
INSERT INTO brands VALUES(4,'Honda');
INSERT INTO brands VALUES(5,'Toyota');

CREATE TABLE cars
( car_id number(10),  
  car_name varchar2(50),
  brand_id number(10)
);

ALTER TABLE cars MODIFY(CAR_ID NULL); 
ALTER TABLE brands MODIFY(brand_ID NULL); 

INSERT INTO cars VALUES(1,'Audi R8 Coupe',1);
INSERT INTO cars VALUES(2,'Audi Q2',1);
INSERT INTO cars VALUES(3,'Audi S1',1);
INSERT INTO cars VALUES(4,'BMW 2-serie Cabrio',2);
INSERT INTO cars VALUES(5,'BMW i8',2);
INSERT INTO cars VALUES(6,'Ford Edge',3);
INSERT INTO cars VALUES(7,'Ford Mustang Fastback',3);
INSERT INTO cars VALUES(8,'Honda S2000',4);
INSERT INTO cars VALUES(9,'Honda Legend',4);
INSERT INTO cars VALUES(10,'Toyota GT86',5);
INSERT INTO cars VALUES(11,'Toyota C-HR',5);

commit;

CREATE VIEW audi_cars AS 
SELECT car_id, car_name, brand_id
FROM cars
WHERE brand_id=1;

SELECT * FROM audi_Cars;

INSERT INTO audi_Cars(car_name, brand_id) values('BMW Z3 coupe',2);
SELECT * FROM audi_Cars;

UPDATE
    audi_cars
SET
    car_name = 'BMW 1-serie Coupe',
    brand_id = 2
WHERE
    car_id = 3;

SELECT
    *
FROM
    audi_cars;

CREATE
    VIEW ford_cars AS SELECT
        car_id,
        car_name,
        brand_id
    FROM
        cars
    WHERE
        brand_id = 3 WITH CHECK OPTION;
        
SELECT * FROM FORD_CARS;

--below query fails coz of with check point clause
INSERT
    INTO
        ford_cars(
            car_name,
            brand_id
        )
    VALUES(
        'Audi RS6 Avant',
        1
    );

--in the same way the update query gives error bcoz of where clause violation    
UPDATE
    ford_cars
SET
    brand_id = 4,
    car_name = 'Honda NSX'
WHERE
    car_id = 6;    