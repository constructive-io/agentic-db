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
  ('019d13bc-2031-7950-9f3f-73edf7c7e9de', '019d13bc-1f23-7305-9068-cef2ccaf4226', NULL, '019d13bc-2120-7864-92ae-27025426fbef', 'localhost', 'public-agentic-db-1774152586440'),
  ('019d13bc-2032-7465-a435-30ea7ce74951', '019d13bc-1f23-7305-9068-cef2ccaf4226', NULL, '019d13bc-2122-7138-a1f9-829943523ba7', 'localhost', 'admin-agentic-db-1774152586440'),
  ('019d13bc-2032-7772-b801-3a1075dfd675', '019d13bc-1f23-7305-9068-cef2ccaf4226', NULL, '019d13bc-2122-7813-af7c-b813a825ee80', 'localhost', 'private-agentic-db-1774152586440'),
  ('019d13bc-2032-7ad3-b26f-e68321364154', '019d13bc-1f23-7305-9068-cef2ccaf4226', NULL, '019d13bc-2122-7b88-890e-796bc61f699c', 'localhost', 'auth-agentic-db-1774152586440'),
  ('019d13bc-2032-7dc3-88fe-887f6d3b7068', '019d13bc-1f23-7305-9068-cef2ccaf4226', NULL, '019d13bc-2123-724f-ac03-0700987bfba2', 'localhost', 'app-public-agentic-db-1774152586440');


SET session_replication_role TO DEFAULT;


