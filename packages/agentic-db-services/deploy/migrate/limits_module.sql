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
  ('019d0ffe-59ed-7070-8945-c8ef3d4576d4', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-59ed-7843-b6e2-96951d24124c', '019d0ffe-5a7d-7ee0-8e58-299fa43bcd2b', '019d0ffe-5b1c-72ea-b424-e89de8b058d4', 'app_limits', '019d0ffe-5c82-77cd-9bbd-936e77c005d6', 'app_limit_defaults', 'app_limits_inc', 'app_limits_dec', 'app_limits_inc_tg', 'app_limits_dec_tg', 'app_limits_upd_tg', 'app_limits_check', 'app', 1, NULL, '019d0ffe-509c-7e69-b073-260da2d7f651'),
  ('019d0ffe-8f1a-742b-9c36-9f935758dfe7', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-59ed-7843-b6e2-96951d24124c', '019d0ffe-5a7d-7ee0-8e58-299fa43bcd2b', '019d0ffe-8f65-7324-80ea-3e9dd2306e62', 'org_limits', '019d0ffe-9136-7dd2-9420-e4069ec1aef5', 'org_limit_defaults', 'org_limits_inc', 'org_limits_dec', 'org_limits_inc_tg', 'org_limits_dec_tg', 'org_limits_upd_tg', 'org_limits_check', 'org', 2, '019d0ffe-509c-7e69-b073-260da2d7f651', '019d0ffe-509c-7e69-b073-260da2d7f651');


SET session_replication_role TO DEFAULT;


