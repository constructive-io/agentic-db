-- Deploy: migrate/invites_module
-- made with <3 @ constructive.io

-- requires: migrate/membership_types_module


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

INSERT INTO metaschema_modules_public.invites_module (
  id,
  database_id,
  schema_id,
  private_schema_id,
  emails_table_id,
  users_table_id,
  invites_table_id,
  claimed_invites_table_id,
  invites_table_name,
  claimed_invites_table_name,
  submit_invite_code_function,
  prefix,
  membership_type,
  entity_table_id
) VALUES
  ('019d2832-29a1-7712-8f8c-ef1416d23916', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2832-29a1-7ccd-8ca7-8a58c363115b', '019d2832-2a75-77fa-86b4-3c1f2cca2270', '019d2832-1538-74f2-b800-9a2cfea1dd32', '019d2831-6349-7cde-a517-c115bf8f4bff', '019d2832-2b5f-7b6c-8412-013c657310bf', '019d2832-30c0-7be7-8dd7-fe88ad9e07cc', 'invites', 'claimed_invites', 'submit_invite_code', NULL, 1, NULL),
  ('019d2832-34ba-780b-92ba-7876a237a8e4', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2832-29a1-7ccd-8ca7-8a58c363115b', '019d2832-2a75-77fa-86b4-3c1f2cca2270', '019d2832-1538-74f2-b800-9a2cfea1dd32', '019d2831-6349-7cde-a517-c115bf8f4bff', '019d2832-3888-7946-a971-01725753d77b', '019d2832-3e7d-7801-8a57-d21db190e7dc', 'org_invites', 'org_claimed_invites', 'submit_org_invite_code', 'org', 2, '019d2831-6349-7cde-a517-c115bf8f4bff');


SET session_replication_role TO DEFAULT;


