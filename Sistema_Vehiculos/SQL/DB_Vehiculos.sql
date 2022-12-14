create database Vehiculos

create table Placa
(
idPlaca int Primary Key, 
NumPlaca varchar(6) unique, --SE PUEDE MODIFICAR
IdUsuario int Foreign Key references Usuarios(IdUsuario), --SE PUEDE MODIFICAR
Monto money Default 0 --SE PUEDE MODIFICAR
)


create procedure consultarPlacas
as
begin
select * from Placa
end

create procedure agregarPlaca
@idPlaca int,
@NumPlaca varchar(6),
@IdUsuario int,
@Monto money
as
begin
insert into Placa (idPlaca,NumPlaca,IdUsuario,Monto) values (@idPlaca,@NumPlaca,@IdUsuario,@Monto)
end

create procedure modificarPlaca
@idPlaca int,
@NumPlaca varchar(6),
@IdUsuario int,
@Monto money
as
begin 
update Placa set NumPlaca = @NumPlaca,IdUsuario=@IdUsuario,monto=@Monto where idPlaca = @idPlaca
end

create procedure eliminarplaca
@idPlaca int
as
begin
delete from Placa where idPlaca = @idPlaca
end


--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------


create table Usuarios
(
IdUsuario int identity (1,1) Primary Key,
Usuario varchar(50) unique,
Clave nvarchar(30) not null, --SE PUEDE MODIFICAR
Nombre nvarchar(50), --SE PUEDE MODIFICAR
Apellidos nvarchar(100) --SE PUEDE MODIFICAR
)

create procedure consultarUsuarios
as
begin
select * from Usuarios
end


create procedure agregarUsuarios
@Usuario varchar(50),
@Clave nvarchar(30),
@Nombre nvarchar(50),
@Apellidos nvarchar(100)
as
begin 
insert into Usuarios (Usuario,Clave,Nombre,Apellidos) values (@Usuario,@Clave,@Nombre,@Apellidos)
end

exec agregarUsuarios 'euboaz@hotmail.com','123abc','Eusebio','Bogantes Azofeifa'
exec consultarUsuarios

create procedure modificarUsuarios
@Usuario varchar(50),
@Clave nvarchar(30),
@Nombre nvarchar(50),
@Apellidos nvarchar(100)
as
begin 
update Usuarios set  Nombre = @Nombre,Apellidos=@Apellidos,Clave=@Clave where Usuario = @Usuario
end

create procedure eliminarUsuarios
@Usuario varchar(50)
as
begin
delete from Usuarios where Usuario = @Usuario
end

create procedure validarUsuario
@Usuario varchar(50),
@Clave nvarchar(30)
as
begin
select * from Usuarios where Usuario=@Usuario and clave = @clave
end

--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------

create procedure reporteGeneral
@NumPlaca varchar(6)
as
begin
select Usuarios.Nombre,Usuarios.Apellidos,Placa.NumPlaca,Placa.Monto, Placa.Monto*0.13 as IVA, Placa.Monto*1.13 as Total from Usuarios inner join Placa on Usuarios.IdUsuario = Placa.IdUsuario where Placa.NumPlaca = @NumPlaca
end

--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------
