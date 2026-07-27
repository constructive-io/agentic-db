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
  label,
  description,
  smart_tags,
  category,
  tags,
  is_public,
  api_exposure
) VALUES
  ('1de16531-3dee-8f11-240c-6c0ade1b5dd8', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'app_public', 'agentic_db_app_public', 'app_public', NULL, NULL, 'app', '{}', true, 'exposable'),
  ('7b1989bc-913d-a3c6-f9c9-3a2401c53d5a', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'app_private', 'agentic_db_app_private', 'app_private', NULL, NULL, 'app', '{}', false, 'never_expose');


SET session_replication_role TO DEFAULT;


