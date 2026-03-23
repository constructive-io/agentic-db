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
  ('4b69cbcc-f00f-fbba-6dfa-8ffffe9d3738', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', NULL, '0d110a49-7d72-7da5-b7e0-6723b10451ca', 'localhost', 'public-agentic_db'),
  ('218861d5-f5e5-ec49-c408-d77327b48fa5', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', NULL, 'd7480806-c43a-1d0b-b307-493e39b96eb9', 'localhost', 'admin-agentic_db'),
  ('cb113a81-9057-8bcc-1c3f-4f7754c80358', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', NULL, 'b24bcaa5-c86c-47d1-8a22-44a1add68332', 'localhost', 'private-agentic_db'),
  ('cbdae4d0-e929-f23b-6d67-e060e94c30fb', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', NULL, 'b0aba09f-b31b-7c5b-7d40-0d3e2c7faffa', 'localhost', 'auth-agentic_db'),
  ('b0d74e11-8dbc-45bd-a5a1-2873a5014fad', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', NULL, 'c670542b-e71a-3b31-7baa-e34ec9e7be7f', 'localhost', 'app-public-agentic_db');


SET session_replication_role TO DEFAULT;


