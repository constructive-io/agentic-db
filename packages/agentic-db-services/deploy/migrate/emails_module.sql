-- Deploy: migrate/emails_module
-- made with <3 @ constructive.io

-- requires: migrate/invites_module


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

INSERT INTO metaschema_modules_public.emails_module (
  id,
  database_id,
  schema_id,
  private_schema_id,
  table_id,
  owner_table_id,
  table_name
) VALUES
  ('019d13bc-b32e-73ad-aa51-11d88382978c', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-b32e-795b-88ad-05e3d9e027f2', '019d13bc-b3f5-7927-836b-995e505c2d9a', '019d13bc-b4cb-76f4-ac5b-1725de3aff22', '019d13bc-21ae-7eb2-b63f-9fb476e22f09', 'emails');


SET session_replication_role TO DEFAULT;


