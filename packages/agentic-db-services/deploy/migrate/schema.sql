-- Deploy: migrate/schema
-- made with <3 @ constructive.io

-- requires: migrate/database


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

INSERT INTO metaschema_public.schema (
  id,
  database_id,
  name,
  schema_name,
  description,
  is_public
) VALUES
  ('019ddc1e-68ec-7c89-801c-b87425e84bf0', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'public', 'agentic_db_public', NULL, true),
  ('019ddc1e-68ee-7e2f-b5ac-9921ddfab2fe', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'private', 'agentic_db_private', NULL, false),
  ('b9366791-5079-4ba2-60c6-59e7b1ca4313', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'app_public', 'agentic_db_app_public', NULL, true);


SET session_replication_role TO DEFAULT;


