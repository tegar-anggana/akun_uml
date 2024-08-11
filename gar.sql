CREATE TABLE "users" (
  "id" varchar PRIMARY KEY,
  "full_name" varchar,
  "username" varchar,
  "email" varchar,
  "password" varchar,
  "created_at" timestamp,
  "updated_at" timestamp
);

CREATE TABLE "companies" (
  "id" varchar PRIMARY KEY,
  "logo" varchar,
  "nama" varchar,
  "industri" varchar,
  "alamat" varchar,
  "provinsi" varchar,
  "kecamatan" varchar,
  "kota_kabupaten" varchar,
  "penanggung_jawab" varchar,
  "posisi" varchar,
  "bank" varchar,
  "no_rekening" varchar
);

CREATE TABLE "chart_of_accounts" (
  "id" varchar PRIMARY KEY,
  "kode_akun" varchar,
  "nama_akun" varchar,
  "tipe_akun" varchar,
  "saldo" numeric,
  "debit_kredit" varchar
);

CREATE TABLE "customers" (
  "id" varchar PRIMARY KEY,
  "nama" varchar,
  "alamat" varchar,
  "email" varchar,
  "no_telp" varchar,
  "created_at" timestamp,
  "updated_at" timestamp
);

CREATE TABLE "suppliers" (
  "id" varchar PRIMARY KEY,
  "nama" varchar,
  "alamat" varchar,
  "email" varchar,
  "no_telp" varchar,
  "created_at" timestamp,
  "updated_at" timestamp
);

CREATE TABLE "products" (
  "id" varchar PRIMARY KEY,
  "nama" varchar,
  "jenis" varchar,
  "harga_beli" bigint,
  "harga_jual" bigint,
  "margin" bigint,
  "stok" int,
  "deskripsi" text,
  "created_at" timestamp,
  "updated_at" timestamp
);

CREATE TABLE "pembelian" (
  "id" varchar PRIMARY KEY,
  "product_id" varchar,
  "supplier_id" varchar,
  "tanggal_pembelian" timestamp,
  "jumlah" int,
  "total_harga" bigint,
  "created_at" timestamp,
  "updated_at" timestamp
);

CREATE TABLE "penjualan" (
  "id" varchar PRIMARY KEY,
  "customer_id" varchar,
  "product_id" varchar,
  "tanggal_penjualan" timestamp,
  "jumlah" int,
  "total_harga" bigint,
  "created_at" timestamp,
  "updated_at" timestamp
);

ALTER TABLE "pembelian" ADD FOREIGN KEY ("product_id") REFERENCES "products" ("id");

ALTER TABLE "pembelian" ADD FOREIGN KEY ("supplier_id") REFERENCES "suppliers" ("id");

ALTER TABLE "penjualan" ADD FOREIGN KEY ("customer_id") REFERENCES "customers" ("id");

ALTER TABLE "penjualan" ADD FOREIGN KEY ("product_id") REFERENCES "products" ("id");
