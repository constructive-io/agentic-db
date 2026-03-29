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
  ('16676d6c-c7a1-138e-40c1-79e9bb736c6d', '14b01c2d-072a-5594-645a-675751a83d86', NULL, '0c4c8420-9bfc-d20e-8d52-4265febca5fc', 'localhost', 'auth-agentic-db-1774777996318'),
  ('4b830808-7851-3407-3212-15c2fdc2294e', '14b01c2d-072a-5594-645a-675751a83d86', NULL, '2a3d1987-6898-1185-e44f-4102e5c06b74', 'localhost', 'admin-agentic-db-1774777996318'),
  ('6ef90236-1142-35ec-97b5-fe9181e79c52', '14b01c2d-072a-5594-645a-675751a83d86', NULL, 'aa478a49-d1c3-5f21-fcba-0f8994af16a7', 'localhost', 'private-agentic-db-1774777996318'),
  ('8cb23719-6582-3ca8-399c-42c7fe45d455', '14b01c2d-072a-5594-645a-675751a83d86', NULL, 'c16a9feb-27dc-a432-3dc6-5d0d03380b34', 'localhost', 'app-public-agentic-db-1774777996318'),
  ('de368306-58c0-c5d3-e5ce-a0d51a7eaad3', '14b01c2d-072a-5594-645a-675751a83d86', NULL, 'bb95df7b-2908-00d7-b800-b1e9c67965d5', 'localhost', 'public-agentic-db-1774777996318');


SET session_replication_role TO DEFAULT;


