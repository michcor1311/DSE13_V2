CREATE DATABASE IF NOT EXISTS api_dse_13;
USE api_dse_13;

CREATE TABLE USUARIO (
  id              int (255) auto_increment not null,
  usuario         varchar (100) not null,  
  email           varchar (255) not null,
  password        varchar (255) not null,
  rol             varchar (100),
  description     varchar (255),
  icono           varchar (255),
  create_at       datatime DEFAULT NULL,
  update_at       datatime DEFAULT NULL,
  remember_token  varchar (255)  
CONSTRAINT pk_USUARIO PRIMARY KEY (id)  
)ENGINE=InnoDb;

CREATE TABLE COMPRA (
  id        int (255) auto_increment not null,
  numero    int (255) not null,
  serie     varchar 
  proveedor varchar (50) DEFAULT NULL,
  rfn_art   int (255),
  cantidad  int (255),
  precio    int (255),
  total     int (255),
  fecha     datatime DEFAULT NULL,
  rfn_ima   int (255),
  rfn_usu   int (255),
CONSTRAINT pk_COMPRA PRIMARY KEY (id),  
CONSTRAINT fk_post_imagen FOREIGN KEY (rfn_ima) REFERENCES IMAGENES(id),
CONSTRAINT fk_post_usuario FOREIGN KEY (rfn_usu) REFERENCES USUARIO(id)
)ENGINE=InnoDb;

CREATE TABLE VENTA (
  id        int (255) auto_increment not null,
  numero    int (255) not null,
  serie     varchar (50) DEFAULT NULL,
  fecha     datatime DEFAULT NULL,
  cantidad  int (255),
  rfn_art   int (255),
  precio    int (255),
  total     int (255),
  rfn_usu   int (255),
CONSTRAINT pk_VENTA PRIMARY KEY (id),
CONSTRAINT fk_post_articulo FOREIGN KEY (rfn_art) REFERENCES ARTICULO(id),
CONSTRAINT fk_post_usuario FOREIGN KEY (rfn_usu) REFERENCES USUARIO(id)
)ENGINE=InnoDb

CREATE TABLE IMAGENES (
  id        int (255) auto_increment not null,
  rfn_usu   int (255),
  fec_crea  datatime DEFAULT NULL,
  fec_actu  datatime DEFAULT NULL,
  imagen    varchar (255),
CONSTRAINT pk_IMAGENES PRIMARY KEY (id),
CONSTRAINT fk_post_usuario FOREIGN KEY (rfn_usu) REFERENCES USUARIO(id)
)ENGINE=InnoDb

CREATE TABLE ARTICULO (
  id                int (255) auto_increment not null,
  rfn_ima           int (255),
  codigoart         varchar (255) not null,
  descripcion       varchar (255),
  estante           varchar (100),
  stock             int (255),
  pvp               int (255),
  costo_ult_compr   int (255),
  costo_prom        int (255),
  rfn_usu           int (255),
  fec_actu          datatime DEFAULT NULL
CONSTRAINT pk_ARTICULO PRIMARY KEY (id)
CONSTRAINT fk_post_imagen FOREIGN (rfn_ima) REFERENCES IMAGENES(id),
CONSTRAINT fk_post_usuario FOREIGN (rfn_usu) REFERENCES USUARIO(id)
)ENGINE=InnoDb

CREATE TABLE HISTOART (
  id          int (255) auto_increment not null,
  rfn_art     int (255) not null,
  rfn_doc     int (255) not null,
  num_doc     int (255) not null,
  fecha       datatime DEFAULT NULL,
  cantidad    int (255),
  precio      int (255),
  stock       int (255)
CONSTRAINT pk_HISTOART PRIMARY KEY (id),
CONSTRAINT fk_post_articulo FOREIGN KEY (rfn_art) REFERENCES ARTICULO(id),
CONSTRAINT fk_post_articulo_doc_vent FOREIGN KEY (rfn_doc) REFERENCES VENTA(numero),
CONSTRAINT fk_post_doc_comp FOREIGN KEY (rfn_doc) REFERENCES COMPRA(numero)
)ENGINE=InnoDb
