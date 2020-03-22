CREATE SCHEMA IF NOT EXISTS indicium;

CREATE TABLE IF NOT EXISTS companies (
	companiesid int4 NOT NULL,
	companiesname varchar(100) NOT NULL,
	companiesdatecreated date NOT NULL,
	createdby varchar(100) NOT NULL,
	companiesemails varchar(100) NOT NULL,
	companiesphones varchar(20) NOT NULL,
	employeesid int4 NOT NULL,
	employeesname varchar(100) NOT NULL,
	usersresponsible varchar(100) NOT NULL,
	sectorkey int4 NOT NULL,
	CONSTRAINT companies_pkey PRIMARY KEY (companiesid)
);

CREATE TABLE IF NOT EXISTS indicium.companies (
	companiesid int4 NOT NULL,
	companiesname varchar(100) NOT NULL,
	companiesdatecreated date NOT NULL,
	createdby varchar(100) NOT NULL,
	companiesemails varchar(100) NOT NULL,
	companiesphones varchar(20) NOT NULL,
	employeesid int4 NOT NULL,
	employeesname varchar(100) NOT NULL,
	usersresponsible varchar(100) NOT NULL,
	sectorkey int4 NOT NULL,
	CONSTRAINT companies_pkey PRIMARY KEY (companiesid)
);

CREATE TABLE IF NOT EXISTS indicium.contacts (
	contactsid int4 NOT NULL,
	contactsname varchar(100) NOT NULL,
	contactsdatecreated date NOT NULL,
	contactscreatedby varchar(100) NOT NULL,
	contactsemails varchar(100) NOT NULL,
	contactsphones varchar(20) NOT NULL,
	contactsemployers varchar(100) NOT NULL,
	employersid int4 NOT NULL,
	contactshomeadress varchar(200) NOT NULL,
	contactslatlong point NOT NULL,
	contactsrelatedtolead int4 NOT NULL,
	contactsresponsible varchar(100) NOT NULL,
	CONSTRAINT contacts_pkey PRIMARY KEY (contactsid)
);

CREATE TABLE IF NOT EXISTS indicium.deals (
	dealsid int4 NOT NULL,
	dealsdatecreated date NOT NULL,
	dealsprice int4 NOT NULL,
	contactsid int4 NOT NULL,
	companiesid int4 NOT NULL,
	CONSTRAINT deals_pkey PRIMARY KEY (dealsid)
);

CREATE TABLE IF NOT EXISTS indicium.sectors (
	sectorkey int4 NOT NULL,
	sector varchar(100) NOT NULL,
	CONSTRAINT sectors_pkey PRIMARY KEY (sectorkey)
);
