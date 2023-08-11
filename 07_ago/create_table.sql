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


CREATE TABLE IF NOT EXISTS products
(
    id                SERIAL PRIMARY KEY,
    brand             int,
    short_description varchar(255) NOT NULL,
    long_description  TEXT,

    CONSTRAINT fk_brand
        FOREIGN KEY (id)
            REFERENCES brands (id)
);
