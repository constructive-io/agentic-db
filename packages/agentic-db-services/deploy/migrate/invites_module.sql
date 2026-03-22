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
  ('019d1795-f0ba-7efd-910b-2a818a412936', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-f0bb-7784-9893-064646694c83', '019d1795-f19a-7f7a-8b00-b27ee187f2d6', '019d1795-e28f-7dfc-ab51-c7c6b9bdf118', '019d1795-494e-7deb-bd76-39af3a5fa635', '019d1795-f27c-79ba-901b-f8fccf989ff6', '019d1795-f78d-788a-abaf-af2f24bb1a3b', 'invites', 'claimed_invites', 'submit_invite_code', NULL, 1, NULL),
  ('019d1795-fb5b-767e-adc2-a908ff5c24fc', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-f0bb-7784-9893-064646694c83', '019d1795-f19a-7f7a-8b00-b27ee187f2d6', '019d1795-e28f-7dfc-ab51-c7c6b9bdf118', '019d1795-494e-7deb-bd76-39af3a5fa635', '019d1795-fc31-78e6-93fa-ada66e90e795', '019d1796-020f-72a2-a9c2-b562334d281a', 'org_invites', 'org_claimed_invites', 'submit_org_invite_code', 'org', 2, '019d1795-494e-7deb-bd76-39af3a5fa635');


SET session_replication_role TO DEFAULT;


