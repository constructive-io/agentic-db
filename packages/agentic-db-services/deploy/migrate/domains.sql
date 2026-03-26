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
  ('019d2831-61a8-7ab5-a58a-1b88d3db0b8d', '019d2831-6080-7e86-a360-21cd48c6ce49', NULL, '019d2831-62ac-7748-8444-3f0a7e987856', 'localhost', 'public-agentic-db-1774495814286'),
  ('019d2831-61a9-72db-80f9-897746c00a7b', '019d2831-6080-7e86-a360-21cd48c6ce49', NULL, '019d2831-62ad-7622-a502-8f4722c03cf0', 'localhost', 'admin-agentic-db-1774495814286'),
  ('019d2831-61a9-7624-9235-929c8412bb17', '019d2831-6080-7e86-a360-21cd48c6ce49', NULL, '019d2831-62ad-7d35-8429-09ab38905d9b', 'localhost', 'private-agentic-db-1774495814286'),
  ('019d2831-61a9-79e0-bbdc-4076379736be', '019d2831-6080-7e86-a360-21cd48c6ce49', NULL, '019d2831-62b0-7a4a-bfc8-89cefd2b974e', 'localhost', 'auth-agentic-db-1774495814286'),
  ('019d2831-61a9-7ce3-9c75-61ed75467fb1', '019d2831-6080-7e86-a360-21cd48c6ce49', NULL, '019d2831-62b2-7475-9b18-fd26beb3628b', 'localhost', 'app-public-agentic-db-1774495814286');


SET session_replication_role TO DEFAULT;


