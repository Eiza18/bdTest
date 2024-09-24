USE Inventario
GO
CREATE SCHEMA Producto
GO
CREATE SCHEMA Pedido
GO
CREATE TABLE Producto.Clase(
	IdClase		INT IDENTITY(1,1) PRIMARY KEY,
	 NombreClase VARCHAR(50) NOT NULL,
);
CREATE TABLE Producto.Categoria(
	IdCategoria		INT IDENTITY(1,1) PRIMARY KEY,
	 TipoCategoria  VARCHAR(50) NOT NULL,
);
CREATE TABLE Producto.Tamano(
	IdTamano		INT IDENTITY(1,1) PRIMARY KEY,
	 NomTamano  VARCHAR(50) NOT NULL,
);
CREATE TABLE Producto.Almacen(
	IdAlmacen		INT IDENTITY(1,1) PRIMARY KEY,
	 NumAlmacen  VARCHAR(50) NOT NULL,
);

CREATE TABLE Producto.Ubicacion(
	 IdUbicacion INT IDENTITY(1,1) PRIMARY KEY,
	 NomUbicacion  VARCHAR(50) NOT NULL,
	 NumAlmacen    INT NOT NULL
	 CONSTRAINT FK_NumAlmacen FOREIGN KEY (NumAlmacen) REFERENCES Producto.Almacen(NumAlmacen)
);