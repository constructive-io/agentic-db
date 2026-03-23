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
  ('019d19cf-0e86-773b-8491-4111eec571ce', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-0e86-7eb9-b558-3e6f5c17954b', '019d19cf-0f18-7d02-acfc-a50c6bdcb569', '019d19cf-0fbf-7a2b-94e8-5e9f8471ac60', 'app_limits', '019d19cf-112f-79cd-b3ee-6511e0b93212', 'app_limit_defaults', 'app_limits_inc', 'app_limits_dec', 'app_limits_inc_tg', 'app_limits_dec_tg', 'app_limits_upd_tg', 'app_limits_check', 'app', 1, NULL, '019d19cf-04f9-762a-946a-add4e6430409'),
  ('019d19cf-49d5-76bc-b800-fa40fa87b9c9', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-0e86-7eb9-b558-3e6f5c17954b', '019d19cf-0f18-7d02-acfc-a50c6bdcb569', '019d19cf-4cc3-7f7e-8565-e982833fa22d', 'org_limits', '019d19cf-4e95-78b6-b86f-41102285efbf', 'org_limit_defaults', 'org_limits_inc', 'org_limits_dec', 'org_limits_inc_tg', 'org_limits_dec_tg', 'org_limits_upd_tg', 'org_limits_check', 'org', 2, '019d19cf-04f9-762a-946a-add4e6430409', '019d19cf-04f9-762a-946a-add4e6430409');


SET session_replication_role TO DEFAULT;


