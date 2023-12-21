\connect metadata;

CREATE OR REPLACE FUNCTION update_modified_column()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$ BEGIN     NEW.modified = now();     RETURN NEW; END $function$;


CREATE TRIGGER update_partition_metadata_modtime BEFORE INSERT OR UPDATE ON partition_metadata FOR EACH ROW EXECUTE FUNCTION update_modified_column();

insert into plugin_info (name, initialized) values ('PartitionMetadataUpdate4131', 't');

insert into plugin_info (name, initialized) values ('datafileIngestionUpdate12636', 't');
insert into plugin_info (name, initialized) values ('datafileIngestionUpdate12946', 't');
insert into plugin_info (name, initialized) values ('datafileIngestionUpdate13793', 't');
insert into plugin_info (name, initialized) values ('datafileIngestionUpdate14152', 't');
insert into plugin_info (name, initialized) values ('datafileIngestionUpdate14281', 't');
insert into plugin_info (name, initialized) values ('datafileIngestionUpdate14404', 't');

insert into plugin_info (name, initialized) values ('AsyncRequestUpdate11983', 't');
insert into plugin_info (name, initialized) values ('AsyncRequestUpdate13367', 't');
insert into plugin_info (name, initialized) values ('AsyncRequestUpdate14434', 't');
