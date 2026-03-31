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
  ('019d4300-7bb8-7dcc-b529-8746682cf4ee', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-7bb9-762e-9a1d-b999dea88b8d', '019d4300-7ca1-767d-9498-7d8c8aae7d5b', '019d4300-6e5f-7970-86cd-e5e4637e320d', '019d42ff-ca62-77a0-ab97-b8d784c420dc', '019d4300-7d9f-7dc8-aaa1-378b2c8d6ffd', '019d4300-831f-70ef-b10d-9675a57dddbd', 'invites', 'claimed_invites', 'submit_invite_code', NULL, 1, NULL),
  ('019d4300-8716-7e94-847f-6e11b6edc53b', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-7bb9-762e-9a1d-b999dea88b8d', '019d4300-7ca1-767d-9498-7d8c8aae7d5b', '019d4300-6e5f-7970-86cd-e5e4637e320d', '019d42ff-ca62-77a0-ab97-b8d784c420dc', '019d4300-8728-7a9b-9bf1-6cf19b56c9b9', '019d4300-8d5a-748e-ac9f-130ead2690c4', 'org_invites', 'org_claimed_invites', 'submit_org_invite_code', 'org', 2, '019d42ff-ca62-77a0-ab97-b8d784c420dc');


SET session_replication_role TO DEFAULT;


