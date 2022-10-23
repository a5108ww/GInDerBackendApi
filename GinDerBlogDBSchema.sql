
--AuthServer DB schema

Create DataBase GinDerAuthDb


Create Table SysUser(
id bigint identity(1,1) primary key not null,
account varchar(100) not null,
pwd varchar(500) not null,
email varchar(200) not null,
isClose bit not null,
removed bit not null
)

Create Table SysUserToken(
id bigint identity(1,1) primary key not null,
sysUserId bigint not null,
systemId bigint not null,
token varchar(2000) not null,
expiredDate datetime not null,
createDate datetime not null,
removed bit not null
)

Create Table SysUserRoleMapping(
id bigint identity(1,1) primary key not null,
sysUserId bigint not null,
sysRoleId bigint not null,
removed bit not null
)

Create Table SysRole(
id bigint identity(1,1) primary key not null,
[name] nvarchar(100) not null,
code varchar(50) not null,
removed bit not null
)

Create Table SystemRoleMapping(
id bigint identity(1,1) primary key not null,
sysRoleId bigint not null,
systemId bigint not null,
removed bit not null
)

Create Table Systems(
id bigint identity(1,1) primary key not null,
[name] nvarchar(100) not null,
systemNo varchar(100) not null,
authAccount varchar(100) not null,
authSecretKey varchar(500) not null,
webDomain varchar(500) not null,
isClose bit not null,
removed bit not null
)

Create Table SystemFunctionMapping(
id bigint identity(1,1) primary key not null,
systemId bigint not null,
sysFunctionId bigint not null,
removed bit not null
)

Create table SysFunction(
id bigint identity(1,1) primary key not null,
functionName nvarchar(50) not null,
controllerName nvarchar(100) default('') not null,
actionName nvarchar(100) default('') not null,
sort int not null,
removed bit not null
)











Create Table SystemUserMapping(
id bigint identity(1,1) primary key not null,
sysUserId bigint not null,
systemId bigint  not null,
removed bit not null
)

Create Table SysUserToken(
id bigint identity(1,1) primary key not null,
systemUserMappingId bigint not null,
token varchar(2000) not null,
expiredDate datetime not null,
createDate datetime not null,
removed bit not null
)





----------------------------

Create DataBase GinDerBlogDb

use GinDerBlogDb

Create Table Topic(
id bigint identity(1,1) primary key not null,
isClose bit not null,
removed bit not null
)