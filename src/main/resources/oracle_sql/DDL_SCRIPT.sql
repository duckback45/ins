CREATE TABLE geyak (
	policy_no	NUMBER(19)		NOT NULL,
	gg_name	VARCHAR(10)		NULL,
	pgg_name	VARCHAR(10)		NULL,
	bh_start_date	date		NULL,
	bh_end_date	date		NULL,
	bhr	NUMBER(19)		NULL,
	nap_pk	NUMBER(10)		NULL,
	mojip_sul	varchar(10)		NULL,
	sugum_sul	varchar(10)		NULL,
	update_date	date		NULL,
	update_user	varchar(10)		NULL,
	spcd	varchar(10)		NULL,
	spname	varchar(100)		NULL,
	create_date	date		NULL,
	create_user	varchar(10)		NULL
);


CREATE TABLE gogek (
	gg_pk	NUMBER(19)		NOT NULL,
	gg_name	varchar(10)		NULL,
	gg_no	varchar(10)		NULL,
	gg_bs_date	date		NULL,
	use_yn	number(1)		NULL
);

CREATE TABLE juso (
	juso_pk	NUMBER(19)		NOT NULL,
	gg_pk	NUMBER(19)		NOT NULL,
	juso_type	number(2)		NULL,
	juso1	varchar(50)		NULL,
	juso2	varchar(50)		NULL,
	hp	number(15)		NULL,
	use_yn	number(1)		NULL
);

CREATE TABLE gaip_sangpum (
	sp_pk	NUMBER(19)		NOT NULL,
	policy_no	NUMBER(19)		NOT NULL,
	spcd	NUMBER(19)		NOT NULL,
	spname	varchar(5)		NULL,
	spgb	number(1)		NULL,
	create_date	date		NULL,
	create_user	varchar(10)		NULL,
	update_date	date		NULL,
	update_user	varchar(10)		NULL,
	use_yn	number(2)		NULL
);

CREATE TABLE geyak_gogek (
	geyak_gogek_pk	NUMBER(19)		NOT NULL,
	policy_no	NUMBER(19)		NOT NULL,
	gg_pk	NUMBER(19)		NOT NULL,
	geyak_gogek_cd	varchar(3)		NULL,
	create_date	date		NULL,
	create_user	varchar(10)		NULL,
	use_yn	number(1)		NULL
);

CREATE TABLE geyak_gogek_code (
	geyak_gogek_cd	varchar(3)		NULL,
	geyak_gogek_name	varchar(10)		NULL,
	use_yn	number(1)		NULL
);

CREATE TABLE sangpum (
	spcd	NUMBER(19)		NOT NULL,
	spname	varchar(50)		NULL,
	spgb	number(1)		NULL,
	create_date	date		NULL,
	create_user	varchar(10)		NULL,
	update_date	date		NULL,
	update_user	varchar(10)		NULL,
	use_yn	number(1)		NULL,
	Field	VARCHAR(255)		NULL
);

ALTER TABLE geyak ADD CONSTRAINT PK_GEYAK PRIMARY KEY (
	policy_no
);

ALTER TABLE gogek ADD CONSTRAINT PK_GOGEK PRIMARY KEY (
	gg_pk
);

ALTER TABLE JUSO ADD CONSTRAINT PK_JUSO PRIMARY KEY (
	juso_pk,
	gg_pk
);

ALTER TABLE gaip_sangpum ADD CONSTRAINT PK_GAIP_SANGPUM PRIMARY KEY (
	sp_pk,
	policy_no,
	spcd
);

ALTER TABLE geyak_gogek ADD CONSTRAINT PK_GEYAK_GOGEK PRIMARY KEY (
	geyak_gogek_pk,
	policy_no,
	gg_pk,
	geyak_gogek_cd
);

ALTER TABLE geyak_gogek_code ADD CONSTRAINT PK_GEYAK_GOGEK_CODE PRIMARY KEY (
	geyak_gogek_cd
);

ALTER TABLE sangpum ADD CONSTRAINT PK_SANGPUM PRIMARY KEY (
	spcd
);
--
-- ALTER TABLE JUSO ADD CONSTRAINT FK_gogek_TO_JUSO_1 FOREIGN KEY (
-- 	gg_pk
-- )
-- REFERENCES gogek (
-- 	gg_pk
-- );
--
-- ALTER TABLE gaip_sangpum ADD CONSTRAINT FK_geyak_TO_gaip_sangpum_1 FOREIGN KEY (
-- 	policy_no
-- )
-- REFERENCES geyak (
-- 	policy_no
-- );
--
-- ALTER TABLE gaip_sangpum ADD CONSTRAINT FK_sangpum_TO_gaip_sangpum_1 FOREIGN KEY (
-- 	spcd
-- )
-- REFERENCES sangpum (
-- 	spcd
-- );
--
-- ALTER TABLE geyak_gogek ADD CONSTRAINT FK_geyak_TO_geyak_gogek_1 FOREIGN KEY (
-- 	policy_no
-- )
-- REFERENCES geyak (
-- 	policy_no
-- );
--
-- ALTER TABLE geyak_gogek ADD CONSTRAINT FK_gogek_TO_geyak_gogek_1 FOREIGN KEY (
-- 	gg_pk
-- )
-- REFERENCES gogek (
-- 	gg_pk
-- );
--
-- ALTER TABLE geyak_gogek ADD CONSTRAINT FK_geyak_gogek_code_TO_geyak_gogek_1 FOREIGN KEY (
-- 	geyak_gogek_cd
-- )
-- REFERENCES geyak_gogek_code (
-- 	geyak_gogek_cd
-- );

