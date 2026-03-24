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
  ('019d20cd-8366-79d9-a217-1a9782b5ffee', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-8367-728f-934d-dda7aac19fad', '019d20cd-83f0-7511-8493-096051b60318', '019d20cd-8487-7346-8ceb-5452080fb5ad', 'app_limits', '019d20cd-85ed-78b9-a62c-aab00cd74c5e', 'app_limit_defaults', 'app_limits_inc', 'app_limits_dec', 'app_limits_inc_tg', 'app_limits_dec_tg', 'app_limits_upd_tg', 'app_limits_check', 'app', 1, NULL, '019d20cd-7a20-7176-823e-cca436cf06f3'),
  ('019d20cd-b8b7-7567-ac72-6fdad635a63e', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-8367-728f-934d-dda7aac19fad', '019d20cd-83f0-7511-8493-096051b60318', '019d20cd-b8c8-7fc8-a81a-bb83189f8334', 'org_limits', '019d20cd-baa9-7c0a-8bbd-5532c416e9ed', 'org_limit_defaults', 'org_limits_inc', 'org_limits_dec', 'org_limits_inc_tg', 'org_limits_dec_tg', 'org_limits_upd_tg', 'org_limits_check', 'org', 2, '019d20cd-7a20-7176-823e-cca436cf06f3', '019d20cd-7a20-7176-823e-cca436cf06f3');


SET session_replication_role TO DEFAULT;


