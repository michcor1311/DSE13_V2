DROP DATABASE api_dse_13;
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
  create_at       datetime DEFAULT NULL,
  update_at       datetime DEFAULT NULL,
  remember_token  varchar (255), 
CONSTRAINT pk_USUARIO PRIMARY KEY (id)  
)ENGINE=InnoDb;

CREATE TABLE IMAGENES (
  id        int (255) auto_increment not null,
  rfn_usu   int (255),
  fec_crea  datetime DEFAULT NULL,
  fec_actu  datetime DEFAULT NULL,
  imagen    varchar (255),
CONSTRAINT pk_IMAGENES PRIMARY KEY (id),
CONSTRAINT fk_post_usuario FOREIGN KEY (rfn_usu) REFERENCES USUARIO(id)
)ENGINE=InnoDb;

CREATE TABLE COMPRA (
  id        int (255) auto_increment not null,
  numero    int (255) not null,
  serie     varchar (50),
  proveedor varchar (50) DEFAULT NULL,
  rfn_art   int (255),
  cantidad  int (255),
  precio    int (255),
  total     int (255),
  fecha     datetime DEFAULT NULL,
  rfn_ima   int (255),
  rfn_usu   int (255),
CONSTRAINT pk_COMPRA PRIMARY KEY (id),  
CONSTRAINT fk_post_imagen FOREIGN KEY (rfn_ima) REFERENCES IMAGENES(id)
)ENGINE=InnoDb;

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
  fec_actu          datetime DEFAULT NULL,
CONSTRAINT pk_ARTICULO PRIMARY KEY (id) 
)ENGINE=InnoDb;

CREATE TABLE VENTA (
  id        int (255) auto_increment not null,
  numero    int (255) not null,
  serie     varchar (50) DEFAULT NULL,
  fecha     datetime DEFAULT NULL,
  cantidad  int (255),
  rfn_art   int (255),
  precio    int (255),
  total     int (255),
  rfn_usu   int (255),
CONSTRAINT pk_VENTA PRIMARY KEY (id),
CONSTRAINT fk_articulo FOREIGN KEY (rfn_art) REFERENCES ARTICULO(id)
)ENGINE=InnoDb;


CREATE TABLE HISTOART (
  id          int (255) auto_increment not null,
  rfn_art     int (255) not null,
  rfn_doc     int (255) not null,
  compra      int (255) not null,
  venta       int (255) DEFAULT NULL,
  fecha       datetime DEFAULT NULL,
  cantidad    int (255),
  precio      int (255),
  stock       int (255),
CONSTRAINT pk_HISTOART PRIMARY KEY (id)
)ENGINE=InnoDb;
