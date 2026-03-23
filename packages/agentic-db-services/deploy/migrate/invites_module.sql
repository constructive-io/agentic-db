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
  ('019d19cf-ce37-7d45-960c-56c677839441', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-ce38-73d6-990e-dbeb412ef697', '019d19cf-cf22-7e87-8b6c-9e9cb2566956', '019d19cf-b8d2-7041-beac-5232995045d1', '019d19cf-04f9-762a-946a-add4e6430409', '019d19cf-d013-7446-b8fb-e1872d03d343', '019d19cf-d59e-74ea-9965-789528438f7c', 'invites', 'claimed_invites', 'submit_invite_code', NULL, 1, NULL),
  ('019d19cf-d9bc-77ed-a8c2-6570b38e47d8', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-ce38-73d6-990e-dbeb412ef697', '019d19cf-cf22-7e87-8b6c-9e9cb2566956', '019d19cf-b8d2-7041-beac-5232995045d1', '019d19cf-04f9-762a-946a-add4e6430409', '019d19cf-dd63-7606-83b3-dad8957dc111', '019d19cf-e3da-7266-9d2c-6651830789fc', 'org_invites', 'org_claimed_invites', 'submit_org_invite_code', 'org', 2, '019d19cf-04f9-762a-946a-add4e6430409');


SET session_replication_role TO DEFAULT;


