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
  ('509f27a0-c5b1-f114-4485-7e9edd66a648', '2ef50f93-192b-b168-969d-304c8e675e1d', '7367e953-0d70-83a4-a154-cab03c10944e', 'e1597e9a-af46-fd48-5605-3a10d6c3ea3d', '5a298841-87da-194e-bc4f-b98db27e0f71', '5353e947-3e3f-3914-7fd1-1370926dd743', 'ce751437-f674-e41d-a187-a2780601aed4', 'c4df5b86-5d57-a3fb-12da-5a5cefb4ba2a', 'org_invites', 'org_claimed_invites', 'submit_org_invite_code', 'org', 2, '5353e947-3e3f-3914-7fd1-1370926dd743'),
  ('671b69ca-919e-cb2f-f6ab-b76711f77255', '2ef50f93-192b-b168-969d-304c8e675e1d', '7367e953-0d70-83a4-a154-cab03c10944e', 'e1597e9a-af46-fd48-5605-3a10d6c3ea3d', '5a298841-87da-194e-bc4f-b98db27e0f71', '5353e947-3e3f-3914-7fd1-1370926dd743', '997d1277-896d-b685-00d0-95c5502c36cb', '188984a9-e536-ab2e-9bce-31b565a0f23a', 'invites', 'claimed_invites', 'submit_invite_code', NULL, 1, NULL);


SET session_replication_role TO DEFAULT;


