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
  ('06bf16ea-d859-5d29-6925-71a7f5334195', '2ef50f93-192b-b168-969d-304c8e675e1d', '8f861828-6a40-84ed-57b2-b046272d8ea8', '9fbcb405-0a09-1cd9-b7e3-11249644e2c7', 'ef9aa1a4-5c48-1385-b538-f136c8e0594c', 'org_limits', '82cb9d81-5983-2821-4074-5383880468c3', 'org_limit_defaults', 'org_limits_inc', 'org_limits_dec', 'org_limits_inc_tg', 'org_limits_dec_tg', 'org_limits_upd_tg', 'org_limits_check', 'org', 2, '5353e947-3e3f-3914-7fd1-1370926dd743', '5353e947-3e3f-3914-7fd1-1370926dd743'),
  ('214e361d-3321-2851-feef-52d0341b5e5a', '2ef50f93-192b-b168-969d-304c8e675e1d', '8f861828-6a40-84ed-57b2-b046272d8ea8', '9fbcb405-0a09-1cd9-b7e3-11249644e2c7', '68fda2a2-87f3-43c8-f059-42665d6b417e', 'app_limits', '0aa71b23-04e0-cae1-5c48-91d6b66f929b', 'app_limit_defaults', 'app_limits_inc', 'app_limits_dec', 'app_limits_inc_tg', 'app_limits_dec_tg', 'app_limits_upd_tg', 'app_limits_check', 'app', 1, NULL, '5353e947-3e3f-3914-7fd1-1370926dd743');


SET session_replication_role TO DEFAULT;


