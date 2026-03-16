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
  ('2818017c-46de-4f58-ba51-729fa2a2f032', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc157f1-b8a9-4049-ea78-232642a0ffa0', 'bfc19237-75e3-4cad-dd4b-ffb4d65f4d2e', 'bfc1f367-d024-41ce-2ee9-fd060907364c', 'bfc15408-cbc4-4c59-b505-cd51e0ad5353', 'emails');


SET session_replication_role TO DEFAULT;


