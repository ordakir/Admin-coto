CREATE OR REPLACE TABLE `COTOS` (
	`coto_id` TINYINT NOT NULL UNIQUE,
	`coto_nombre` TINYTEXT(65535),
	`coto_dom_fiscal` TEXT(65535),
	`coto_rfc` TINYTEXT(65535),
	`coto_num_contacto` NUMERIC,
	PRIMARY KEY(`coto_id`)
);

CREATE OR REPLACE TABLE `UNIDAD_HAB` (
	`uhab_id` TINYTEXT(65535) NOT NULL UNIQUE,
	`uhab_coto` TINYINT NOT NULL,
	`uhab_nom_propietario` MEDIUMTEXT(65535) NOT NULL,
	`uhab_adeudo` BOOLEAN NOT NULL,
	`uhab_monto_deuda` TINYINT,
	PRIMARY KEY(`uhab_id`, `uhab_coto`)
);

CREATE OR REPLACE TABLE `USUARIOS` (
	`us_id` INTEGER NOT NULL UNIQUE,
	`us_nombre` MEDIUMTEXT(65535) NOT NULL,
	`us_uhab_num` TINYTEXT(65535),
	`us_coto` TINYINT,
	`us_correo` MEDIUMTEXT(65535),
	PRIMARY KEY(`us_id`, `us_uhab_num`)
);

CREATE OR REPLACE TABLE `PAGOS` (
	`pg_uhab` TINYTEXT(65535) NOT NULL UNIQUE,
	`pg_coto` TINYINT NOT NULL,
	`pg_mes` TINYINT NOT NULL,
	`pg_año` TINYINT NOT NULL,
	`pg_monto` TINYINT NOT NULL,
	`pg_tipo_cuota` TINYINT NOT NULL,
	`pg_ref_banco` TINYINT NOT NULL,
	PRIMARY KEY(`pg_uhab`, `pg_coto`)
);

