--Crowdunding Data Engineering
CREATE TABLE category (
    category_id VARCHAR(10) PRIMARY KEY,
    category VARCHAR(255) NOT NULL
);

CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name CHAR(50),
    last_name CHAR(50),
    email VARCHAR(255)
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR(10) PRIMARY KEY,
    subcategory VARCHAR(255)
);

CREATE TABLE campaign (
    cf_id INT,
    contact_id INT,
    company_name TEXT,
    description VARCHAR(500),
    goal INT,
    pledged INT,
    backers_count INT,
    country CHAR(2),
    currency CHAR(3),
    launched_date VARCHAR,
    end_date VARCHAR ,
    category_id VARCHAR(10),
    subcategory_id VARCHAR(10)
);

--Data Verification 
SELECT *
FROM category
FETCH FIRST 5 ROWS ONLY;

SELECT *
FROM contacts
FETCH FIRST 5 ROWS ONLY;

SELECT *
FROM subcategory
FETCH FIRST 5 ROWS ONLY;

SELECT *
FROM campaign 
FETCH FIRST 5 ROWS ONLY;
