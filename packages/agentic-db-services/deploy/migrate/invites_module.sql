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
  ('019d0ffe-faf8-71a0-9adb-a2930bacf0be', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-faf8-7914-b664-9b671fee8616', '019d0ffe-fbd1-74af-b0a9-707adc0d5c13', '019d0ffe-ee29-7bb1-8b74-03c7f795b113', '019d0ffe-509c-7e69-b073-260da2d7f651', '019d0ffe-fcb5-7c8e-8ba9-ecf3d06d8859', '019d0fff-01a2-7c5c-b94b-f17a54ea1b20', 'invites', 'claimed_invites', 'submit_invite_code', NULL, 1, NULL),
  ('019d0fff-0550-7bfe-ad02-bb956d4ce809', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-faf8-7914-b664-9b671fee8616', '019d0ffe-fbd1-74af-b0a9-707adc0d5c13', '019d0ffe-ee29-7bb1-8b74-03c7f795b113', '019d0ffe-509c-7e69-b073-260da2d7f651', '019d0fff-05c5-7ae7-a5fe-f4a921e7f0d1', '019d0fff-0b65-74c2-87f5-d4132063b759', 'org_invites', 'org_claimed_invites', 'submit_org_invite_code', 'org', 2, '019d0ffe-509c-7e69-b073-260da2d7f651');


SET session_replication_role TO DEFAULT;


