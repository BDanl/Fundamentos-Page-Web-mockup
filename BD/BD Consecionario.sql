-- Database: Concesionario

-- DROP DATABASE IF EXISTS "Concesionario";

CREATE DATABASE "Concesionario"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Spanish_Colombia.1252'
    LC_CTYPE = 'Spanish_Colombia.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
	
	-- Creación de la tabla de Zonas Comunes
CREATE TABLE ZonasComunes (
    ZonaID SERIAL PRIMARY KEY,
    Nombre VARCHAR(255),
    HorarioDeUso VARCHAR(255),
    MaximoPersonas INT,
    RequierePago BOOLEAN,
    DepositoRequerido BOOLEAN,
    DuracionMaximaReserva INT,
    CondicionesCancelacion TEXT
);

-- Creación de la tabla de Reservas de Zonas Comunes
CREATE TABLE ReservasZonasComunes (
    ReservaID SERIAL PRIMARY KEY,
    ZonaID INT REFERENCES ZonasComunes(ZonaID),
    NumeroApartamento INT,
    NombreResidente VARCHAR(255),
    FechaHoraInicio TIMESTAMP,
    FechaHoraFin TIMESTAMP,
    ReciboDePago BOOLEAN,
    Deposito BOOLEAN,
    ListadoVisitantesExternos TEXT
);

-- Creación de la tabla de Visitantes
CREATE TABLE Visitantes (
    VisitanteID SERIAL PRIMARY KEY,
    FechaHoraIngreso TIMESTAMP,
    TipoIdentificacion VARCHAR(50),
    NumeroIdentificacion VARCHAR(50),
    NombresCompletos VARCHAR(255),
    NumeroTelefonico VARCHAR(20),
    UnidadResidencial VARCHAR(255),
    MarcaVehiculo VARCHAR(50),
    PlacaVehiculo VARCHAR(20),
    NumeroParqueadero VARCHAR(20)
);

-- Creación de la tabla de Autorizaciones de Ingreso de Visitantes
CREATE TABLE AutorizacionesIngresoVisitantes (
    AutorizacionID SERIAL PRIMARY KEY,
    NumeroApartamento INT,
    NombreResidenteAutorizado VARCHAR(255),
    NumeroTelefonicoResidenteAutorizado VARCHAR(20)
);

-- Creación de la tabla de PQRSD
CREATE TABLE PQRSD (
    PQRSDID SERIAL PRIMARY KEY,
    NumeroApartamento INT,
    FechaHoraRegistro TIMESTAMP,
    TipoIdentificacion VARCHAR(50),
    NumeroIdentificacion VARCHAR(50),
    NombreCompleto VARCHAR(255),
    CorreoElectronico VARCHAR(255),
    NumeroTelefonico VARCHAR(20),
    TipoPQRSD VARCHAR(50),
    FormaDeRespuesta VARCHAR(50),
    DireccionRespuesta TEXT,
    ContenidoPQRSD TEXT,
    DocumentosAdjuntos TEXT,
    Estado VARCHAR(50),
    Responsable VARCHAR(255),
    FechaLimiteRespuesta DATE
);

-- Creación de la tabla de Comentarios en PQRSD
CREATE TABLE ComentariosPQRSD (
    ComentarioID SERIAL PRIMARY KEY,
    PQRSDID INT REFERENCES PQRSD(PQRSDID),
    FechaHora TIMESTAMP,
    NombreComentador VARCHAR(255),
    Comentario TEXT
);

-- Creación de la tabla de Inmuebles Privados
CREATE TABLE InmueblesPrivados (
    InmuebleID SERIAL PRIMARY KEY,
    TipoInmueble VARCHAR(50),
    NumeroNomenclatura VARCHAR(255),
    Coeficiente INT
);

-- Creación de la tabla de Propietarios, Arrendatarios y Residentes
CREATE TABLE Residentes (
    ResidenteID SERIAL PRIMARY KEY,
    TipoPersona VARCHAR(50),
    TipoIdentificacion VARCHAR(50),
    NombresRazonSocial VARCHAR(255),
    NumeroContacto VARCHAR(20),
    CorreoElectronico VARCHAR(255),
    Direccion VARCHAR(255),
    Ciudad VARCHAR(50),
    Departamento VARCHAR(50),
    TieneVehiculo BOOLEAN,
    MarcaVehiculo VARCHAR(50),
    ModeloVehiculo VARCHAR(50),
    PlacaVehiculo VARCHAR(20),
    ResponsableVehiculo VARCHAR(255)
);

-- Creación de la tabla de Relación Inmueble-Residente
CREATE TABLE RelacionInmuebleResidente (
    RelacionID SERIAL PRIMARY KEY,
    ResidenteID INT REFERENCES Residentes(ResidenteID),
    InmuebleID INT REFERENCES InmueblesPrivados(InmuebleID)
);