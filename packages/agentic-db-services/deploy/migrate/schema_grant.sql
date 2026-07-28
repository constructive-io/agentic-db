-- Deploy: migrate/schema_grant
-- made with <3 @ constructive.io

-- requires: migrate/default_privilege


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

INSERT INTO metaschema_public.schema_grant (
  id,
  database_id,
  schema_id,
  grantee_name
) VALUES
  ('019fa679-90b7-7bd1-9e2f-30bee943c5c3', '019fa679-9064-7be8-b12a-f974608356ce', '019fa679-908a-7721-91ed-45c1fa1edc42', 'administrator'),
  ('019fa679-90cb-79eb-aca9-0ff8f216c0f1', '019fa679-9064-7be8-b12a-f974608356ce', '019fa679-908a-7721-91ed-45c1fa1edc42', 'authenticated'),
  ('019fa679-90d9-771f-aceb-85a1a589d5d3', '019fa679-9064-7be8-b12a-f974608356ce', '019fa679-908a-7721-91ed-45c1fa1edc42', 'anonymous'),
  ('019fa679-911d-7be8-80fa-b2437e25cb8e', '019fa679-9064-7be8-b12a-f974608356ce', '019fa679-908c-7eda-9454-5d1cbb3cc55d', 'administrator'),
  ('019fa679-9129-7423-b827-b5ae5e3cd920', '019fa679-9064-7be8-b12a-f974608356ce', '019fa679-908c-7eda-9454-5d1cbb3cc55d', 'authenticated'),
  ('019fa679-9132-78c2-964e-78d6214b6278', '019fa679-9064-7be8-b12a-f974608356ce', '019fa679-908c-7eda-9454-5d1cbb3cc55d', 'anonymous');


SET session_replication_role TO DEFAULT;


