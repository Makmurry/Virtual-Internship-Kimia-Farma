--Create Table Aggregate
CREATE TABLE tabel_aggregate AS 
(SELECT
		*,
 		(jumlah_barang * harga) AS total_sales
  FROM tabel_base);

