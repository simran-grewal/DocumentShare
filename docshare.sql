USE [dbdoc]
GO
/****** Object:  Table [dbo].[tbusr]    Script Date: 08/30/2016 09:47:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbusr](
	[usrcod] [int] IDENTITY(1,1) NOT NULL,
	[usrnam] [varchar](100) NULL,
	[usreml] [varchar](50) NULL,
	[usrpwd] [varchar](100) NULL,
	[usrregdat] [datetime] NULL,
	[usrsecqst] [varchar](100) NULL,
	[usrsecans] [varchar](100) NULL,
	[usrsts] [char](1) NULL,
 CONSTRAINT [PK_tbusr] PRIMARY KEY CLUSTERED 
(
	[usrcod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbusr] ON
INSERT [dbo].[tbusr] ([usrcod], [usrnam], [usreml], [usrpwd], [usrregdat], [usrsecqst], [usrsecans], [usrsts]) VALUES (2, N'Shalini Sharma', N'cs@cssoftsolutions.com', N'abc123', CAST(0x0000A6210141C9F8 AS DateTime), N'What is name of your first teacher?', N'Sadhana', N'V')
INSERT [dbo].[tbusr] ([usrcod], [usrnam], [usreml], [usrpwd], [usrregdat], [usrsecqst], [usrsecans], [usrsts]) VALUES (3, N'Abhishek Sharma', N'abc@yahoo.com', N'qwerty', CAST(0x0000A651013DDEE1 AS DateTime), N'What is name of your first teacher?', N'Anjali', N'V')
SET IDENTITY_INSERT [dbo].[tbusr] OFF
/****** Object:  Table [dbo].[tbshr]    Script Date: 08/30/2016 09:47:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbshr](
	[shrcod] [int] IDENTITY(1,1) NOT NULL,
	[shrdoc] [int] NULL,
	[shrtyp] [char](1) NULL,
	[shrusrcod] [int] NULL,
	[shrgrpcod] [int] NULL,
	[shrdat] [datetime] NULL,
	[shrrgt] [char](1) NULL,
 CONSTRAINT [PK_tbshr] PRIMARY KEY CLUSTERED 
(
	[shrcod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbshr] ON
INSERT [dbo].[tbshr] ([shrcod], [shrdoc], [shrtyp], [shrusrcod], [shrgrpcod], [shrdat], [shrrgt]) VALUES (1, 1, N'U', 3, -1, CAST(0x0000A66C013816F9 AS DateTime), N'R')
SET IDENTITY_INSERT [dbo].[tbshr] OFF
/****** Object:  Table [dbo].[tbpur]    Script Date: 08/30/2016 09:47:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbpur](
	[purcod] [int] IDENTITY(1,1) NOT NULL,
	[purdat] [datetime] NULL,
	[purusrcod] [int] NULL,
	[purdoccod] [int] NULL,
 CONSTRAINT [PK_tbpur] PRIMARY KEY CLUSTERED 
(
	[purcod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbpst]    Script Date: 08/30/2016 09:47:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbpst](
	[pstcod] [int] IDENTITY(1,1) NOT NULL,
	[pstgrpcod] [int] NULL,
	[pstusrcod] [int] NULL,
	[pstdat] [datetime] NULL,
	[pstdsc] [varchar](1000) NULL,
 CONSTRAINT [PK_tbpst] PRIMARY KEY CLUSTERED 
(
	[pstcod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbpst] ON
INSERT [dbo].[tbpst] ([pstcod], [pstgrpcod], [pstusrcod], [pstdat], [pstdsc]) VALUES (1, 1, 2, CAST(0x0000A65B00BECCB9 AS DateTime), N'Dasf f asd fds g dfg df hf dgg  gh hg')
SET IDENTITY_INSERT [dbo].[tbpst] OFF
/****** Object:  Table [dbo].[tbprf]    Script Date: 08/30/2016 09:47:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbprf](
	[prfcod] [int] IDENTITY(1,1) NOT NULL,
	[prfusrcod] [int] NULL,
	[prfpic] [varchar](50) NULL,
	[prfgnd] [char](1) NULL,
	[prfdob] [varchar](100) NULL,
	[prfdsc] [varchar](50) NULL,
	[prfloc] [varchar](100) NULL,
 CONSTRAINT [PK_tbprf] PRIMARY KEY CLUSTERED 
(
	[prfcod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbprf] ON
INSERT [dbo].[tbprf] ([prfcod], [prfusrcod], [prfpic], [prfgnd], [prfdob], [prfdsc], [prfloc]) VALUES (2, 2, N'.jpg', N'F', N'2/9/1980', N'adas  sfd sdf sd f ds sdg', N'Chandigarh')
INSERT [dbo].[tbprf] ([prfcod], [prfusrcod], [prfpic], [prfgnd], [prfdob], [prfdsc], [prfloc]) VALUES (3, 3, N'.jpg', N'M', N'3/4/1999', N'sfas fas df asdf as dgas dg sf af dAF SA F ASDF', N'Chandigarh')
SET IDENTITY_INSERT [dbo].[tbprf] OFF
/****** Object:  Table [dbo].[tblst]    Script Date: 08/30/2016 09:47:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblst](
	[lstcod] [int] IDENTITY(1,1) NOT NULL,
	[lstnam] [varchar](100) NULL,
	[lstusrcod] [int] NULL,
	[lstcrtdat] [datetime] NULL,
 CONSTRAINT [PK_tblst] PRIMARY KEY CLUSTERED 
(
	[lstcod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblst] ON
INSERT [dbo].[tblst] ([lstcod], [lstnam], [lstusrcod], [lstcrtdat]) VALUES (1, N'Root', 2, CAST(0x0000A6DA00000000 AS DateTime))
INSERT [dbo].[tblst] ([lstcod], [lstnam], [lstusrcod], [lstcrtdat]) VALUES (2, N'Academic Records', 2, CAST(0x0000A63D013E5DF1 AS DateTime))
INSERT [dbo].[tblst] ([lstcod], [lstnam], [lstusrcod], [lstcrtdat]) VALUES (3, N'Root', 3, CAST(0x0000A651013E895E AS DateTime))
SET IDENTITY_INSERT [dbo].[tblst] OFF
/****** Object:  Table [dbo].[tbgrpmem]    Script Date: 08/30/2016 09:47:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbgrpmem](
	[grpmemcod] [int] IDENTITY(1,1) NOT NULL,
	[grpmemgrpcod] [int] NULL,
	[grpmemusrcod] [int] NULL,
	[grpmemjondat] [datetime] NULL,
 CONSTRAINT [PK_tbgrpmem] PRIMARY KEY CLUSTERED 
(
	[grpmemcod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbgrpmem] ON
INSERT [dbo].[tbgrpmem] ([grpmemcod], [grpmemgrpcod], [grpmemusrcod], [grpmemjondat]) VALUES (1, 1, 3, CAST(0x0000A651013EFCE4 AS DateTime))
SET IDENTITY_INSERT [dbo].[tbgrpmem] OFF
/****** Object:  Table [dbo].[tbgrp]    Script Date: 08/30/2016 09:47:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbgrp](
	[grpcod] [int] IDENTITY(1,1) NOT NULL,
	[grpnam] [varchar](100) NULL,
	[grpdsc] [varchar](1000) NULL,
	[grpcrtdat] [datetime] NULL,
	[grpownusrcod] [int] NULL,
 CONSTRAINT [PK_tbgrp] PRIMARY KEY CLUSTERED 
(
	[grpcod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbgrp] ON
INSERT [dbo].[tbgrp] ([grpcod], [grpnam], [grpdsc], [grpcrtdat], [grpownusrcod]) VALUES (1, N'Developers Forum', N'Group to discuss common programming best practices.', CAST(0x0000A64B0141AD93 AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[tbgrp] OFF
/****** Object:  Table [dbo].[tbdoc]    Script Date: 08/30/2016 09:47:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbdoc](
	[doccod] [int] IDENTITY(1,1) NOT NULL,
	[doctit] [varchar](100) NULL,
	[docdsc] [varchar](1000) NULL,
	[docfil] [varchar](100) NULL,
	[doclstcod] [int] NULL,
	[docupldat] [datetime] NULL,
	[docforsalsts] [char](1) NULL,
	[docprc] [float] NULL,
 CONSTRAINT [PK_tbdoc] PRIMARY KEY CLUSTERED 
(
	[doccod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbdoc] ON
INSERT [dbo].[tbdoc] ([doccod], [doctit], [docdsc], [docfil], [doclstcod], [docupldat], [docforsalsts], [docprc]) VALUES (1, N'Circular Data Storage', N'sdfs df sdf sd fs df asdf asdf a dfas dfa sfasa dfsasdf', N'.pdf', 1, CAST(0x0000A63D013E904B AS DateTime), N'F', 0)
SET IDENTITY_INSERT [dbo].[tbdoc] OFF
/****** Object:  StoredProcedure [dbo].[vrfusr]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[vrfusr]
(
	@eml varchar(100)
)
AS
declare @r int
set @r=-1
select @r=usrcod from tbusr where usreml=@eml
if @r!=-1
update tbusr set usrsts='V' where usrcod=@r
return @r
GO
/****** Object:  StoredProcedure [dbo].[updusr]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updusr]
@usrcod int,
@usrnam varchar(100),
@usreml varchar(100),
@usrpwd varchar(100),
@usrregdat datetime,
@usrsecqst varchar(100),
@usrsecans varchar(100),
@usrsts char(1) 
AS
	update tbusr set usrnam=@usrnam,usreml=@usreml,usrpwd=@usrpwd,usrregdat=@usrregdat,usrsecqst=@usrsecqst,usrsecans=@usrsecans where usrcod=@usrcod
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[updshr]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updshr]
@shrcod int,
@shrdoc int,
@shrtyp char(1),
@shrusrcod int,
@shrgrpcod int,
@shrdat datetime,
@shrrgt char(1)
AS
	update tbshr set shrdoc=@shrdoc,shrtyp=@shrtyp,shrusrcod=@shrusrcod,shrgrpcod=@shrgrpcod,shrdat =@shrdat,shrrgt=@shrrgt where shrcod=@shrcod
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[updpur]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updpur]
@purcod int,
@purdat datetime,
@purusrcod int,
@purdoccod int

AS
	update tbpur  set purdat=@purdat,purusrcod=@purusrcod,purdoccod=@purdoccod where purcod=@purcod
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[updpst]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updpst]
@pstcod int,
@pstgrpcod int,
@pstusrcod int,
@pstdat datetime,
@pstdsc varchar(1000)
AS
	update tbpst set pstgrpcod=@pstgrpcod,pstusrcod=@pstusrcod,pstdat=@pstdat,pstdsc=@pstdsc where pstcod=@pstcod
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[updprf]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updprf]
@prfcod int,
@prfusrcod int,
@prfpic varchar(50),
@prfgnd char(1),
@prfdob varchar(100),
@prfdsc varchar(500),
@prfloc varchar(100)

AS
	update tbprf set prfusrcod=@prfusrcod,prfpic=@prfpic,prfgnd=@prfgnd,prfdob=@prfdob,prfdsc=@prfdsc,prfloc=@prfloc where prfcod=@prfcod
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[updlst]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updlst]
@lstcod int,
@lstnam varchar(100),
@lstusrcod int,
@lstcrtdat datetime

AS
	update tblst set lstnam=@lstnam,lstusrcod=@lstusrcod ,
	lstcrtdat=@lstcrtdat
	where lstcod=@lstcod
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[updgrpmem]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updgrpmem]
@grpmemcod int,
@grpmemgrpcod int,
@grpmemusrcod int,
@grpmemjondat datetime
AS
	update tbgrpmem set grpmemgrpcod=@grpmemgrpcod,grpmemusrcod=@grpmemusrcod,grpmemjondat=@grpmemjondat where grpmemcod=@grpmemcod
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[updgrp]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updgrp]
@grpcod int,
@grpnam varchar(100),
@grpdsc varchar(1000),
@grpcrtdat datetime,
@grpownusrcod int
AS
	update tbgrp set grpnam=@grpnam,grpdsc=@grpdsc,grpcrtdat=@grpcrtdat,grpownusrcod=@grpownusrcod where grpcod=@grpcod
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[upddoc]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[upddoc]
@doccod int,
@doctit varchar(100),
@docdsc varchar(1000),
@docfil varchar(100),
@doclstcod int,
@docupldat datetime,
@docforsalsts char(1),
@docprc float
AS
	update tbdoc set doctit=@doctit,docdsc=@docdsc,docfil=@docfil,doclstcod=@doclstcod,docupldat=@docupldat,docforsalsts=@docforsalsts,docprc=@docprc where doccod=@doccod
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[srcusrs]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[srcusrs]
(
	@eml varchar(100),
	@doccod int
)
AS
declare @cod int
set @cod=0
select @cod=usrcod from tbusr where usreml=@eml
if @cod=0
	return @cod
else
begin
declare @r int
select @r=count(*) from tbshr where shrdoc=@doccod and
shrusrcod=@cod and shrtyp='U'
if @r=0
	return @cod
else
	return -1
end
GO
/****** Object:  StoredProcedure [dbo].[srcusr]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[srcusr]
	@eml varchar(50),
	@grpcod int
AS
select usrcod,usrnam,prfcod,prfpic,prfdsc,
(select count(*) from tbgrpmem where grpmemusrcod=
a.usrcod and grpmemgrpcod=@grpcod) sts from tbusr a,
tbprf where prfusrcod=usrcod and usreml=@eml;
GO
/****** Object:  StoredProcedure [dbo].[logincheck]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[logincheck]
(
	@eml varchar(100),
	@pwd varchar(100)
)
AS
declare @cod int
declare @actpwd varchar(100)
select @actpwd=usrpwd from tbusr where usreml=@eml and usrsts='V'
if @actpwd=@pwd
begin
select @cod=usrcod from tbusr where usreml=@eml
end
else
select @cod=-1
return @cod
GO
/****** Object:  StoredProcedure [dbo].[insusr]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insusr]
@usrnam varchar(100),
@usreml varchar(100),
@usrpwd varchar(100),
@usrregdat datetime,
@usrsecqst varchar(100),
@usrsecans varchar(100),
@usrsts char(1) 
AS
	insert tbusr values (@usrnam,@usreml,@usrpwd,@usrregdat,@usrsecqst,@usrsecans,@usrsts)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[insshr]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insshr]
@shrdoc int,
@shrtyp char(1),
@shrusrcod int,
@shrgrpcod int,
@shrdat datetime,
@shrrgt char(1)
AS
	insert tbshr values(@shrdoc,@shrtyp,@shrusrcod,@shrgrpcod,@shrdat,@shrrgt)
GO
/****** Object:  StoredProcedure [dbo].[inspur]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[inspur]
@purdat datetime,
@purusrcod int,
@purdoccod int

AS
	insert tbpur values (@purdat,@purusrcod,@purdoccod)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[inspst]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[inspst]
@pstgrpcod int,
@pstusrcod int,
@pstdat datetime,
@pstdsc varchar(1000)
AS
	insert tbpst values (@pstgrpcod,@pstusrcod,@pstdat,@pstdsc)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[insprf]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insprf]
@prfusrcod int,
@prfpic varchar(50),
@prfgnd char(1),
@prfdob varchar(100),
@prfdsc varchar(500),
@prfloc varchar(100)

AS
     insert tbprf values (@prfusrcod,@prfpic,@prfgnd,@prfdob,@prfdsc,@prfloc)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[inslst]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[inslst]
@lstnam varchar(100),
@lstusrcod int,
@lstcrtdat datetime

AS
	insert tblst values(@lstnam,@lstusrcod,@lstcrtdat)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[insgrpmem]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insgrpmem]
@grpmemgrpcod int,
@grpmemusrcod int,
@grpmemjondat datetime
AS
	insert tbgrpmem values (@grpmemgrpcod,@grpmemusrcod,@grpmemjondat)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[insgrp]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insgrp]
@grpnam varchar(100),
@grpdsc varchar(1000),
@grpcrtdat datetime,
@grpownusrcod int
AS
	insert tbgrp values(@grpnam,@grpdsc,@grpcrtdat,@grpownusrcod)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[insdoc]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insdoc]
@doctit varchar(100),
@docdsc varchar(1000),
@docfil varchar(100),
@doclstcod int,
@docupldat datetime,
@docforsalsts char(1),
@docprc float
AS
declare @r int
insert tbdoc values (@doctit,@docdsc,@docfil,@doclstcod,@docupldat,@docforsalsts,@docprc)
select @r=@@IDENTITY
return @r
GO
/****** Object:  StoredProcedure [dbo].[fndusrinfo]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[fndusrinfo]
	@usrcod int
AS
select * from tbusr where usrcod=@usrcod
GO
/****** Object:  StoredProcedure [dbo].[findusr]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[findusr]
@eml varchar(50)
AS
   select * from tbusr where usreml=@eml
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[findshr]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[findshr]
@shrcod int
AS
	select * from tbshr where shrcod=@shrcod
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[findpur]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[findpur]
@purcod int
AS
	select * from tbpur where purcod=@purcod
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[findpst]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[findpst]
@pstcod int
AS
	select * from tbpst where pstcod=@pstcod
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[findprf]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[findprf]
@prfcod int
AS
	select * from tbprf where prfusrcod=@prfcod
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[findlst]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[findlst]
@lstcod int
AS
	select * from tblst where lstcod=@lstcod
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[findgrpmem]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[findgrpmem]
@grpmemcod int
AS
	select * from tbgrpmem where grpmemcod=@grpmemcod
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[findgrp]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[findgrp]
@grpcod int
AS
	select * from tbgrp where grpcod=@grpcod
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[finddoc]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[finddoc]
@doccod int
AS
	select * from tbdoc where doccod=@doccod
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[dspmyshrdoc]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dspmyshrdoc]
	@usrcod int
AS
select * from tbdoc where doccod in(select shrdoc from
tbshr where shrusrcod=@usrcod and shrtyp='U')
union
select * from tbdoc where doccod in(select shrdoc from
tbshr where shrgrpcod in(select grpmemgrpcod from
tbgrpmem where grpmemusrcod=@usrcod) and shrtyp='G')
GO
/****** Object:  StoredProcedure [dbo].[dspmygrp]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dspmygrp]
	@usrcod int
AS
	select * from tbgrp where grpownusrcod=@usrcod 
	union all
	select * from tbgrp where grpcod in(select grpmemgrpcod
	from tbgrpmem where grpmemusrcod=@usrcod)
GO
/****** Object:  StoredProcedure [dbo].[dspmydoc]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dspmydoc]
(
@usrcod int,
@lstcod int
)
AS
if @lstcod=0
select * from tbdoc where doclstcod in(select lstcod from tblst where
lstusrcod=@usrcod) order by docupldat desc
else
select * from tbdoc where doclstcod=@lstcod order by docupldat desc
GO
/****** Object:  StoredProcedure [dbo].[dsplstcnt]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dsplstcnt]
	@usrcod int
AS
select lstcod,lstnam,(select count(*) from tbdoc where doclstcod=a.lstcod) nod from 
tblst a where lstusrcod=@usrcod
GO
/****** Object:  StoredProcedure [dbo].[dspdocforsal]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dspdocforsal]
	
AS
	select * from tbdoc where docforsalsts='T' order by
	docupldat desc;
GO
/****** Object:  StoredProcedure [dbo].[docshrwit]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[docshrwit]
(
	@doccod int
)
AS
select shrcod,shrdat,usreml name from tbshr,tbusr where 
shrdoc=@doccod and shrusrcod=usrcod and shrtyp='U'
union 
select shrcod,shrdat,grpnam name from tbshr,tbgrp
where shrdoc=@doccod and shrgrpcod=grpcod and shrtyp='G'
GO
/****** Object:  StoredProcedure [dbo].[disusr]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[disusr]

AS
	select * from tbusr
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[disshr]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[disshr]
AS
	select * from tbshr
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[dispur]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dispur]
AS
	select * from tbpur
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[dispst]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dispst]
(
	@grpcod int
)
AS
select pstcod,pstdat,pstdsc,usrnam from tbpst,tbusr where
pstusrcod=usrcod and pstgrpcod=@grpcod order by pstdat desc
GO
/****** Object:  StoredProcedure [dbo].[disprf]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[disprf]
AS
	
	select * from tbprf
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[dislst]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dislst]
(
	@usrcod int
)
AS
	select * from tblst where lstusrcod=@usrcod
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[disgrpmem]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[disgrpmem]
(
	@grpcod int
)
AS
select usrcod,usrnam,prfpic,prfdsc,grpmemjondat,
grpmemcod from tbusr,tbprf,tbgrpmem where
prfusrcod=usrcod and grpmemusrcod=usrcod and
grpmemgrpcod=@grpcod order by usrnam;
GO
/****** Object:  StoredProcedure [dbo].[disgrp]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[disgrp]
AS
	select * from tbgrp
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[disdoc]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[disdoc]

AS
	select * from tbdoc
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[delusr]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delusr]
@usrcod int
AS
	delete from tbusr where usrcod=@usrcod
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[delshr]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delshr]
@shrcod int
AS
	delete from tbshr where shrcod=@shrcod
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[delpur]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delpur]
@purcod int
AS
	delete from tbpur where purcod=@purcod
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[delpst]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delpst]
@pstcod int
AS
     delete from tbpst where pstcod=@pstcod
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[delprf]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delprf]
@prfcod int
AS
	delete from tbprf where prfcod=@prfcod
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[dellst]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dellst]
@lstcod int
AS
	delete from tblst where lstcod=@lstcod
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[delgrpmem]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delgrpmem]
@grpmemcod int
AS
	delete from tbgrpmem where grpmemcod=@grpmemcod
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[delgrp]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delgrp]
@grpcod int
AS
	delete from tbgrp where grpcod=@grpcod
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[deldoc]    Script Date: 08/30/2016 09:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[deldoc]
@doccod int

AS
	delete from tbdoc where doccod=@doccod
	RETURN
GO
