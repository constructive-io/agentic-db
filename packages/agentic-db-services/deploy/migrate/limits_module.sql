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
  ('019d21f8-2bec-736a-8ad5-0492b2c4ff26', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-2bec-79f0-a7bb-5e0d6e773656', '019d21f8-2c68-7475-97d5-d1e68cdff909', '019d21f8-2cf1-7ea0-9011-3d1c3375f00f', 'app_limits', '019d21f8-2e51-750e-9e18-8c468f7aabd7', 'app_limit_defaults', 'app_limits_inc', 'app_limits_dec', 'app_limits_inc_tg', 'app_limits_dec_tg', 'app_limits_upd_tg', 'app_limits_check', 'app', 1, NULL, '019d21f8-2335-70cb-b636-53bf74d97668'),
  ('019d21f8-5d36-781f-94e2-6e63aef7617c', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-2bec-79f0-a7bb-5e0d6e773656', '019d21f8-2c68-7475-97d5-d1e68cdff909', '019d21f8-5d48-7168-8451-216c6fcbacc3', 'org_limits', '019d21f8-5efe-7315-bbc0-235821be2ac4', 'org_limit_defaults', 'org_limits_inc', 'org_limits_dec', 'org_limits_inc_tg', 'org_limits_dec_tg', 'org_limits_upd_tg', 'org_limits_check', 'org', 2, '019d21f8-2335-70cb-b636-53bf74d97668', '019d21f8-2335-70cb-b636-53bf74d97668');


SET session_replication_role TO DEFAULT;


