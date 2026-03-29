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
  ('304deb12-a2fa-c1e4-3c03-032dd5719f06', '2ef50f93-192b-b168-969d-304c8e675e1d', NULL, 'ccbc0a07-ae90-c183-db56-fd41f35affbe', 'localhost', 'public-agentic-db-1774818387123'),
  ('3ce27045-94fe-8985-9108-d0155064d2db', '2ef50f93-192b-b168-969d-304c8e675e1d', NULL, '618c89d8-fefa-b93b-141d-ae3e60e2b052', 'localhost', 'admin-agentic-db-1774818387123'),
  ('6673b4c7-7769-6525-2be6-e9345e6133b6', '2ef50f93-192b-b168-969d-304c8e675e1d', NULL, 'b6d1ba78-d1b4-511d-1a9b-98722c2fbf51', 'localhost', 'private-agentic-db-1774818387123'),
  ('8677f271-3950-ab96-97f0-ee8f580429df', '2ef50f93-192b-b168-969d-304c8e675e1d', NULL, '2aa88e58-f65f-eb2f-34e4-88bc5a63a7c3', 'localhost', 'app-public-agentic-db-1774818387123'),
  ('a978cb6c-89a7-5e9f-226c-6b50dc356246', '2ef50f93-192b-b168-969d-304c8e675e1d', NULL, '1c501ba9-5e71-96d1-8a8f-8332178351d2', 'localhost', 'auth-agentic-db-1774818387123');


SET session_replication_role TO DEFAULT;


