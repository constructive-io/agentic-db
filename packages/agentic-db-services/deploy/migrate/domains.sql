-- Deploy: migrate/domains
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

INSERT INTO services_public.domains (
  id,
  database_id,
  site_id,
  api_id,
  domain,
  subdomain
) VALUES
  ('019d934f-86cc-7991-a559-6867d4fc6c55', '019d934f-84fc-7efb-8598-917bbf218b99', NULL, '019d934f-889e-73e3-9588-2b1b295ebc1b', 'localhost', 'public-agentic-db-1776292955306'),
  ('019d934f-86cd-7afb-bfee-54e6e91a3f71', '019d934f-84fc-7efb-8598-917bbf218b99', NULL, '019d934f-88a0-7b44-93ef-994338e5fd65', 'localhost', 'admin-agentic-db-1776292955306'),
  ('019d934f-86cd-7ea4-b729-5902bb6dbe53', '019d934f-84fc-7efb-8598-917bbf218b99', NULL, '019d934f-88a1-72b3-a58a-d5ea0b2dc8fb', 'localhost', 'private-agentic-db-1776292955306'),
  ('019d934f-86ce-71de-ac44-d4a81cc85cc7', '019d934f-84fc-7efb-8598-917bbf218b99', NULL, '019d934f-88a1-75f2-abdf-eea6c699f9f6', 'localhost', 'auth-agentic-db-1776292955306'),
  ('019d934f-86ce-74fd-9b65-0c683d9be54e', '019d934f-84fc-7efb-8598-917bbf218b99', NULL, '019d934f-88a1-7d3f-9622-6a2f2d175107', 'localhost', 'app-public-agentic-db-1776292955306');


SET session_replication_role TO DEFAULT;


