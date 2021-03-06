USE [Administracion]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarClientes]    Script Date: 23/1/2021 19:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[ActualizarClientes]

@id_cli int, @nom_cli varchar(100), @ape_cli varchar(100)

as

--Actualiza Clientes

if not exists (select id_clientes From Cliente where id_clientes=@id_cli)

insert into Cliente (id_clientes, nom_cli, Ape_cli) values (@id_cli, @nom_cli, @ape_cli)

else

update Cliente set id_clientes=@id_cli, nom_cli=@nom_cli, Ape_cli=@ape_cli where id_clientes= @id_cli
