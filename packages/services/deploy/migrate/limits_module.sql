-- Deploy: migrate/limits_module
-- made with <3 @ constructive.io

-- requires: migrate/permissions_module


SET session_replication_role TO replica;
-- using replica in case we are deploying triggers to metaschema_public

-- unaccent, postgis affected and require grants
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA public to public;

DO $LQLMIGRATION$
  DECLARE
  BEGIN

    EXECUTE format('GRANT CONNECT ON DATABASE %I TO %I', current_database(), 'app_user');
    EXECUTE format('GRANT CONNECT ON DATABASE %I TO %I', current_database(), 'app_admin');

  END;
$LQLMIGRATION$;

INSERT INTO metaschema_modules_public.limits_module (
  id,
  database_id,
  schema_id,
  private_schema_id,
  table_id,
  table_name,
  default_table_id,
  default_table_name,
  limit_increment_function,
  limit_decrement_function,
  limit_increment_trigger,
  limit_decrement_trigger,
  limit_update_trigger,
  limit_check_function,
  prefix,
  membership_type,
  entity_table_id,
  actor_table_id
) VALUES
  ('2c7e1f9d-9bf4-4082-b511-4efc8bde4508', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1c0d4-dc91-475c-df6e-fb6a6a78144c', '9bc199e2-fa86-421f-61a9-3a4c73ecd43c', '9bc13faa-b725-4094-e352-ae91484f0cd5', 'app_limits', '9bc129a0-a9b9-42cb-a4d1-f1bc586bcef1', 'app_limit_defaults', 'app_limits_inc', 'app_limits_dec', 'app_limits_inc_tg', 'app_limits_dec_tg', 'app_limits_upd_tg', 'app_limits_check', 'app', 1, NULL, '9bc12972-1a70-4812-beb6-f24029a19ea6'),
  ('547879e7-1eb1-4533-998a-13967f2a0297', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1c0d4-dc91-475c-df6e-fb6a6a78144c', '9bc199e2-fa86-421f-61a9-3a4c73ecd43c', '9bc1a2e6-c921-407d-07ee-cbf9b835232e', 'org_limits', '9bc11c5b-bc71-44b9-5ae0-dc6fa122657b', 'org_limit_defaults', 'org_limits_inc', 'org_limits_dec', 'org_limits_inc_tg', 'org_limits_dec_tg', 'org_limits_upd_tg', 'org_limits_check', 'org', 2, '9bc12972-1a70-4812-beb6-f24029a19ea6', '9bc12972-1a70-4812-beb6-f24029a19ea6');


SET session_replication_role TO DEFAULT;


