CREATE TABLE mobil (
kd_mobil varchar(10) primary key,
jenis varchar (15) not null,
plat varchar (10) not null,
warna varchar(20) not null,
tahun varchar(10) not null,
harga_sewa_harian varchar(20) not null);

select * from mobil;
INSERT INTO mobil ( Kd_mobil, jenis, plat, warna, tahun, harga_sewa_harian) VALUES
('23DS', 'Avanza', 'T78', 'ungu', '2013', '300000');
select * from mobil;

SELECT * FROM customer WHERE nama = 'Jarjit'; 
select * from customer;

UPDATE mobil SET harga_sewa_harian ='200000' where kd_mobil ='23DS';
select * from mobil;

DELETE FROM mobil WHERE kd_mobil='23DS';
select * from mobil;