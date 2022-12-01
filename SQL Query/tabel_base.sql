/* Create Table base */
CREATE TABLE tabel_base AS 
(SELECT
		s.id_cabang,
		s.id_invoice,
		s.tanggal,
		s.id_customer,
		s.id_barang,
		s.jumlah_barang,
		s.unit,
		s.mata_uang,
		s.brand_id,
		c.level,
		c.nama,
		c.cabang_sales,
		c.id_distributor,
		c.cust_group,
		b.nama_barang,
 		b.harga,
		b.nama_tipe,
		b.kode_brand,
		b.brand
  FROM sales AS s
  LEFT JOIN customer AS c
  ON s.id_customer = c.id_customer
  LEFT JOIN barang AS b
  ON s.id_barang = b.kode_barang);