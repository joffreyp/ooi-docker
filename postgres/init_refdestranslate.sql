\connect metadata;

create table refdestranslate (
 eventid integer not null,
 deploymentnumber integer not null,
 node character varying(8) not null,
 nominalreferencedesignator character varying(255) not null,
 sensor character varying(32) not null,
 subsite character varying(32) not null,
 CONSTRAINT refdestranslate_pkey PRIMARY KEY(eventid));

CREATE UNIQUE INDEX refdestranslate_subsite_node_sensor_deploymentnumber_key on refdestranslate (subsite, node, sensor, deploymentnumber);
