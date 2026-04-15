-- Deploy: migrate/apis
-- made with <3 @ constructive.io

-- requires: migrate/sites


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

INSERT INTO services_public.apis (
  id,
  database_id,
  name,
  is_public,
  role_name,
  anon_role
) VALUES
  ('019d934f-889e-73e3-9588-2b1b295ebc1b', '019d934f-84fc-7efb-8598-917bbf218b99', 'public', true, 'authenticated', 'anonymous'),
  ('019d934f-88a0-7b44-93ef-994338e5fd65', '019d934f-84fc-7efb-8598-917bbf218b99', 'admin', true, 'authenticated', 'anonymous'),
  ('019d934f-88a1-72b3-a58a-d5ea0b2dc8fb', '019d934f-84fc-7efb-8598-917bbf218b99', 'private', false, 'administrator', 'administrator'),
  ('019d934f-88a1-75f2-abdf-eea6c699f9f6', '019d934f-84fc-7efb-8598-917bbf218b99', 'auth', true, 'authenticated', 'anonymous'),
  ('019d934f-88a1-7d3f-9622-6a2f2d175107', '019d934f-84fc-7efb-8598-917bbf218b99', 'app', true, 'authenticated', 'anonymous');


SET session_replication_role TO DEFAULT;


