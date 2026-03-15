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
  ('ed064e15-0fb5-4893-9363-90a57d21bdcb', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a00833b1-9fd1-4dfc-9b9c-13d14a04fc38', 'a0088e12-b10a-4ebd-fac0-60096f51bd8c', 'a0084fe3-d31b-45b5-cfb7-b9d95985f6d8', 'app_limits', 'a0088e03-e01e-4ef1-dd2b-4453a690c77f', 'app_limit_defaults', 'app_limits_inc', 'app_limits_dec', 'app_limits_inc_tg', 'app_limits_dec_tg', 'app_limits_upd_tg', 'app_limits_check', 'app', 1, NULL, 'a0082485-cf01-4c72-8c4f-76422cceded1'),
  ('53109584-2dd7-40a6-ae07-3d5b7fb36864', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a00833b1-9fd1-4dfc-9b9c-13d14a04fc38', 'a0088e12-b10a-4ebd-fac0-60096f51bd8c', 'a00897ba-f51a-4daa-2328-2dca8adaf0b3', 'org_limits', 'a0088ec2-77cf-4698-337a-bce462e8d188', 'org_limit_defaults', 'org_limits_inc', 'org_limits_dec', 'org_limits_inc_tg', 'org_limits_dec_tg', 'org_limits_upd_tg', 'org_limits_check', 'org', 2, 'a0082485-cf01-4c72-8c4f-76422cceded1', 'a0082485-cf01-4c72-8c4f-76422cceded1');


SET session_replication_role TO DEFAULT;


