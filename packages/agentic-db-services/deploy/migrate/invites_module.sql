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
  ('019d11da-13be-77a9-a024-b76a6f599607', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11da-13bf-70d2-aac6-828c5a7647ad', '019d11da-1497-7678-a9e1-25432a96498d', '019d11da-0502-76d2-bd69-ff87518e3d9f', '019d11d9-5aed-7673-b41b-b11528f73f79', '019d11da-1572-7a29-ba64-db4bf37148d7', '019d11da-1a83-7873-b250-dd737dccdd90', 'invites', 'claimed_invites', 'submit_invite_code', NULL, 1, NULL),
  ('019d11da-1e20-78fc-9a33-2112fe1607d0', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11da-13bf-70d2-aac6-828c5a7647ad', '019d11da-1497-7678-a9e1-25432a96498d', '019d11da-0502-76d2-bd69-ff87518e3d9f', '019d11d9-5aed-7673-b41b-b11528f73f79', '019d11da-1f55-78b7-843a-6259ac62b819', '019d11da-24cb-7d94-8e17-0f78774149dd', 'org_invites', 'org_claimed_invites', 'submit_org_invite_code', 'org', 2, '019d11d9-5aed-7673-b41b-b11528f73f79');


SET session_replication_role TO DEFAULT;


