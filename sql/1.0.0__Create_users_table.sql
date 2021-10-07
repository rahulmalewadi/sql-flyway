/* Single line comment */
CREATE TABLE test_data (
 value VARCHAR(25) NOT NULL PRIMARY KEY
);


/*
Multi-line
comment
*/

-- Multi-statement PostgreSQL function
CREATE FUNCTION AddData() RETURNS INTEGER
AS $$
   BEGIN
    INSERT INTO test_data (value) VALUES ('Hello');
    RETURN 1;
  END;
$$ LANGUAGE plpgsql;

SELECT *  INTO TEMP adddata_temp_table FROM AddData() ;

-- Single-statement PostgreSQL function
CREATE FUNCTION add(integer, integer) RETURNS integer
   LANGUAGE sql IMMUTABLE STRICT
   AS $_$select $1 + $2;$_$;

-- Placeholder
INSERT INTO ${tableName} (name) VALUES ('Mr. T');

-- COPY ... FROM STDIN
COPY copy_test (c1, c2, c3) FROM stdin;
1	utf8: ümlaute: äüß	NaN
2	\N	123
3	text	123.234444444444449
\.
