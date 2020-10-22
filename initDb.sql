CREATE TABLE currency_rates (
    index            VARCHAR(30) NOT NULL,
    exchange_rate_to_byn  FLOAT NOT NULL,
    id                 SERIAL NOT NULL
);

ALTER TABLE currency_rates ADD CONSTRAINT currency_rates_pk PRIMARY KEY ( id );

CREATE TABLE family_members (
    id          SERIAL NOT NULL,
    name        VARCHAR(30) NOT NULL,
    surname     VARCHAR(30) NOT NULL,
    patronymic  VARCHAR(30)
);

ALTER TABLE family_members ADD CONSTRAINT family_members_pk PRIMARY KEY ( id );

CREATE TABLE transfer (
    id                     SERIAL NOT NULL,
    date                 TIMESTAMP NOT NULL,
    cash                   BOOLEAN NOT NULL,
    amount                 FLOAT NOT NULL,
    transfer_type           VARCHAR(40),
    currency_rates_id        INTEGER,
    family_members_executor  INTEGER
);

ALTER TABLE transfer ADD CONSTRAINT transfer_pk PRIMARY KEY ( id );

CREATE TABLE transfer_type (
    type         VARCHAR(40) NOT NULL,
    description  VARCHAR(200),
    income       BOOLEAN NOT NULL
);

ALTER TABLE transfer_type ADD CONSTRAINT transfer_type_pk PRIMARY KEY ( type );

ALTER TABLE transfer
    ADD CONSTRAINT transfer_currency_rates_fk FOREIGN KEY ( currency_rates_id )
        REFERENCES currency_rates ( id );

ALTER TABLE transfer
    ADD CONSTRAINT transfer_family_members_fk FOREIGN KEY ( family_members_executor )
        REFERENCES family_members ( id );

ALTER TABLE transfer
    ADD CONSTRAINT transfer_transfer_type_fk FOREIGN KEY ( transfer_type )
        REFERENCES transfer_type ( type );