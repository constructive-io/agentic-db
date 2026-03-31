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
  ('019d416f-f643-791c-bd26-c71dab53f9c6', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-f643-7f17-8992-1a4684867502', '019d416f-f737-7be3-a72a-5f2cb1fd6096', '019d416f-e749-726e-9c23-08883823a1a4', '019d416f-384a-79e2-9379-99ca3460e274', '019d416f-f833-7616-8bbe-962c8a20160f', '019d416f-fdd0-7174-84ee-839d87b318ab', 'invites', 'claimed_invites', 'submit_invite_code', NULL, 1, NULL),
  ('019d4170-01ec-7faf-870c-1c51f17bbe56', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-f643-7f17-8992-1a4684867502', '019d416f-f737-7be3-a72a-5f2cb1fd6096', '019d416f-e749-726e-9c23-08883823a1a4', '019d416f-384a-79e2-9379-99ca3460e274', '019d4170-02d2-76b0-9d09-aed750cc8489', '019d4170-0915-75a7-befb-775dc26cf9eb', 'org_invites', 'org_claimed_invites', 'submit_org_invite_code', 'org', 2, '019d416f-384a-79e2-9379-99ca3460e274');


SET session_replication_role TO DEFAULT;


