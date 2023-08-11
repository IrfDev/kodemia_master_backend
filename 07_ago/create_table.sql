/*
- Create simple table

CREATE TABLE IF NOT EXISTS products

(
    id                INT          NOT NULL UNIQUE PRIMARY KEY,
    short_description varchar(255) NOT NULL,
    long_description  TEXT
);
*/

/*DROP TABLE products;*/

/*
 You can still declare your product as primary key
 */

/*
CREATE TABLE IF NOT EXISTS products
(
    sku               varchar(10)  NOT NULL UNIQUE,
    short_description varchar(255) NOT NULL,
    long_description  TEXT,
    brand             varchar(20)  NOT NULL,

    PRIMARY KEY (sku, brand)
);

*/


/*
Create tables with Primary key and foreign key

Noticed that the table with the foreign key, needs to be created first

Cons
 */

CREATE TABLE IF NOT EXISTS brands
(
    id   SERIAL PRIMARY KEY,
    name varchar(20)
);

DROP TABLE products;

/*
The constrint will avoid no introduce wrong brand_id's (not included on the brands table)

Please notice that you can add the PRIMARY KEY inline. But is not a function.
*/

CREATE TABLE IF NOT EXISTS products
(
    id                SERIAL PRIMARY KEY,
    brand_id          int,
    short_description varchar(255) NOT NULL,
    long_description  TEXT,

    CONSTRAINT fk_brand
        FOREIGN KEY (brand_id)
            REFERENCES brands (id)
);
