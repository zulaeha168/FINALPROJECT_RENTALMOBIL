CREATE DATABASE rentalmobil;
USE rentalmobil;

CREATE TABLE mobil (
kd_mobil varchar(10),
jenis varchar (15),
plat varchar (10),
warna varchar(20),
tahun varchar(10),
harga_sewa_harian varchar(20));

create table supir (
id_supir varchar(10),
kd_mobil varchar(10),
Nama varchar (15),
Alamat varchar(15),
Jenis_Kelamin varchar(10),
no_hp varchar(15));

CREATE TABLE customer (
  id_customer varchar(10),
  kd_mobil varchar(10),
  Nama varchar(30),
  Alamat varchar(30),
  Jenis_Kelamin varchar(10),
  no_hp varchar(15));
  
  CREATE TABLE transaksi (
  NoRegistrasi varchar(10),
  kd_mobil varchar(10),
  id_customer varchar(10),
  id_supir varchar(10),
  kode_mobil varchar(10),
  Tgl_Pesan varchar(15),
  Tgl_Kembali varchar(15));
  
create table pembayaran (
id_pembayaran varchar(10),
kd_mobil varchar(10),
tgl_bayar date,
total_bayar varchar (20),
NoRegistrasi varchar(10));

alter table pembayaran add column jaminan text after kd_mobil;
desc pembayaran;

alter table pembayaran add column denda int first;
desc pembayaran;
 
 alter table pembayaran RENAME column denda TO dnda;
desc pembayaran;

alter table pembayaran modify jaminan varchar(10);
desc pembayaran;

alter table pembayaran drop column jaminan;
desc pembayaran;

alter table pembayaran add primary key (id_pembayaran);
desc pembayaran;

alter table customer add constraint pk_customer primary key(id_customer);
desc customer;

alter table pembayaran drop primary key;
desc pembayaran;
drop table pembayaran;

alter table customer drop constraint pk_customer;
desc customer;