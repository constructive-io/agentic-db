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
  ('2acff620-0cd6-c89d-8ff8-964cacf55432', '14b01c2d-072a-5594-645a-675751a83d86', 'a841229c-1e8a-8118-8b1a-589d543b924c', 'e9eee499-5b77-f62d-9b9e-1291de0c0b89', 'd4267430-d15d-f69e-23e4-dbace0dafda0', 'org_limits', '982a144d-3c39-34f4-02ab-09942450e100', 'org_limit_defaults', 'org_limits_inc', 'org_limits_dec', 'org_limits_inc_tg', 'org_limits_dec_tg', 'org_limits_upd_tg', 'org_limits_check', 'org', 2, '5258dec3-0cde-6103-1859-08598c428740', '5258dec3-0cde-6103-1859-08598c428740'),
  ('a30377e6-68a2-12d0-6985-33ddbe64a2b6', '14b01c2d-072a-5594-645a-675751a83d86', 'a841229c-1e8a-8118-8b1a-589d543b924c', 'e9eee499-5b77-f62d-9b9e-1291de0c0b89', 'd0fc0807-4235-5d54-5b47-5609ac924a86', 'app_limits', '489f0d20-477a-8bc6-9c5f-71c333e1a19f', 'app_limit_defaults', 'app_limits_inc', 'app_limits_dec', 'app_limits_inc_tg', 'app_limits_dec_tg', 'app_limits_upd_tg', 'app_limits_check', 'app', 1, NULL, '5258dec3-0cde-6103-1859-08598c428740');


SET session_replication_role TO DEFAULT;


