-- Deploy: migrate/default_privilege
-- made with <3 @ constructive.io

-- requires: migrate/trigger_function


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

INSERT INTO metaschema_public.default_privilege (
  id,
  database_id,
  schema_id,
  object_type,
  privilege,
  grantee_name,
  is_grant
) VALUES
  ('019fa679-90e0-7f00-93bb-5840d9ccade6', '019fa679-9064-7be8-b12a-f974608356ce', '019fa679-908a-7721-91ed-45c1fa1edc42', 'tables', 'ALL', 'administrator', true),
  ('019fa679-90f1-7650-90d3-8de4ee936bd4', '019fa679-9064-7be8-b12a-f974608356ce', '019fa679-908a-7721-91ed-45c1fa1edc42', 'sequences', 'ALL', 'administrator', true),
  ('019fa679-90f9-700b-8e3f-b4d83376a28e', '019fa679-9064-7be8-b12a-f974608356ce', '019fa679-908a-7721-91ed-45c1fa1edc42', 'functions', 'ALL', 'administrator', true),
  ('019fa679-90fe-7f68-af9e-53800f36dd65', '019fa679-9064-7be8-b12a-f974608356ce', '019fa679-908a-7721-91ed-45c1fa1edc42', 'functions', 'ALL', 'authenticated', true),
  ('019fa679-910a-7842-9968-9e995bcb55b0', '019fa679-9064-7be8-b12a-f974608356ce', '019fa679-908a-7721-91ed-45c1fa1edc42', 'sequences', 'ALL', 'authenticated', true),
  ('019fa679-910e-7872-a06a-782facb81fd2', '019fa679-9064-7be8-b12a-f974608356ce', '019fa679-908a-7721-91ed-45c1fa1edc42', 'functions', 'ALL', 'anonymous', true),
  ('019fa679-913c-7b6a-aecf-60bad7a4a643', '019fa679-9064-7be8-b12a-f974608356ce', '019fa679-908c-7eda-9454-5d1cbb3cc55d', 'tables', 'ALL', 'administrator', true),
  ('019fa679-9143-7322-b1f5-95e62ee840a1', '019fa679-9064-7be8-b12a-f974608356ce', '019fa679-908c-7eda-9454-5d1cbb3cc55d', 'sequences', 'ALL', 'administrator', true),
  ('019fa679-9148-7727-906a-9fcc90683bbd', '019fa679-9064-7be8-b12a-f974608356ce', '019fa679-908c-7eda-9454-5d1cbb3cc55d', 'functions', 'ALL', 'administrator', true),
  ('019fa679-914d-7209-9b8e-d50fb836bb6f', '019fa679-9064-7be8-b12a-f974608356ce', '019fa679-908c-7eda-9454-5d1cbb3cc55d', 'functions', 'ALL', 'authenticated', true),
  ('019fa679-9151-70a9-87f3-9b041d62e313', '019fa679-9064-7be8-b12a-f974608356ce', '019fa679-908c-7eda-9454-5d1cbb3cc55d', 'sequences', 'ALL', 'authenticated', true),
  ('019fa679-915b-7669-975a-1c7d5a144cc9', '019fa679-9064-7be8-b12a-f974608356ce', '019fa679-908c-7eda-9454-5d1cbb3cc55d', 'functions', 'ALL', 'anonymous', true);


SET session_replication_role TO DEFAULT;


