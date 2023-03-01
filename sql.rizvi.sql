create database dbpegawai 
use dbpegawai

create table divisi (kd_divisi char(5) primary key, nama_divisi varchar (20),lokasi varchar(20))

create table tbkaryawan(nip varchar(5) primary key,nama varchar(20),
tgl_lahir date, gaji int, kdjenis char(1), kdsts char(1), kd_divisi char(5) foreign key references divisi(kd_divisi))

insert into divisi values ('M0001','Bag. Gudang','Gedung A')
insert into divisi values ('M0024','Bag. Marketing','Gedung B')
insert into divisi values ('M0012','Bag. Humas','Gedung B')
insert into divisi values ('M0013','Bag .Accounting','Gedung A')

select * from tbkaryawan

insert into tbkaryawan values ('P0010','Prastya','09/12/2000',5700000,'L','K','M0001')
insert into tbkaryawan values ('P0013','Yulita','03/05/2000',4700000,'P','K','M0013')
insert into tbkaryawan values ('P0011','johan','03/15/2001',3500000,'L','B','M0012')
insert into tbkaryawan values ('P0009','Nicholas','05/05/2003',5200000,'L','B','M0024')
insert into tbkaryawan values ('P0008','Yenni','11/02/1990',5900000,'P','K','M0013')

select nip,nama,gaji,0.05*gaji as tunjangan,kdsts from tbkaryawan where kdsts ='B'

select * from tbkaryawan where gaji > 4000000

select *from tbkaryawan where gaji > 4000000 and kdjenis ='L'

select nip,nama,tgl_lahir,year(getdate())-year(tgl_lahir) as umur from tbkaryawan where year(getdate())-year(tgl_lahir)<24


