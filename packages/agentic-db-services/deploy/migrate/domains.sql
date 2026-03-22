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
  ('019d1736-598a-7222-9dc3-1c2e7fbeb011', '019d1736-587a-73df-addd-59801f8d68ca', NULL, '019d1736-5a7f-7138-942c-5cbdb0338d7f', 'localhost', 'public-agentic-db'),
  ('019d1736-598b-71a2-b1e5-1b57ddd84ecf', '019d1736-587a-73df-addd-59801f8d68ca', NULL, '019d1736-5a81-71c4-8779-a0878491548f', 'localhost', 'admin-agentic-db'),
  ('019d1736-598b-7585-9554-a442585d33c6', '019d1736-587a-73df-addd-59801f8d68ca', NULL, '019d1736-5a81-7a6d-80ff-9175542fe559', 'localhost', 'private-agentic-db'),
  ('019d1736-598b-7887-b307-a97b54584852', '019d1736-587a-73df-addd-59801f8d68ca', NULL, '019d1736-5a81-7d92-9cce-10d4617c6246', 'localhost', 'auth-agentic-db'),
  ('019d1736-598b-7b82-9323-c62b4f75fd3d', '019d1736-587a-73df-addd-59801f8d68ca', NULL, '019d1736-5a82-750f-bf4b-b9c3ef7874de', 'localhost', 'app-public-agentic-db');


SET session_replication_role TO DEFAULT;


