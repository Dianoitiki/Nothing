CREATE EXTENSION file_fdw;

CREATE SERVER midatasrv FOREIGN DATA WRAPPER file_fdw;

CREATE FOREIGN TABLE midata(x INTEGER,y INTEGER)
	SERVER midatasrv
	OPTIONS (filename '/home/user/data.csv',format 'csv');

SELECT * FROM midata;
