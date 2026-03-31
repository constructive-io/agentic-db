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
  ('019d42ff-c89a-7c36-b454-0259b0b5f04b', '019d42ff-c75a-7c43-be39-ef7a74b280f4', NULL, '019d42ff-c9b5-7825-b2c6-c5a17f45b14e', 'localhost', 'public-agentic-db-1774945548894'),
  ('019d42ff-c89b-7abb-8222-a266e41d3e68', '019d42ff-c75a-7c43-be39-ef7a74b280f4', NULL, '019d42ff-c9b8-7ca2-b4d2-ce1666a77a2f', 'localhost', 'admin-agentic-db-1774945548894'),
  ('019d42ff-c89b-7ead-a09d-41f9d689782e', '019d42ff-c75a-7c43-be39-ef7a74b280f4', NULL, '019d42ff-c9b9-77f2-a938-da130d54ead9', 'localhost', 'private-agentic-db-1774945548894'),
  ('019d42ff-c89c-7207-887e-56bd7ec40e10', '019d42ff-c75a-7c43-be39-ef7a74b280f4', NULL, '019d42ff-c9b9-7b66-a187-12ec7c1e2db4', 'localhost', 'auth-agentic-db-1774945548894'),
  ('019d42ff-c89c-7555-bb62-0792b37bb838', '019d42ff-c75a-7c43-be39-ef7a74b280f4', NULL, '019d42ff-c9ba-75f1-b0e4-f355bd253ab9', 'localhost', 'app-public-agentic-db-1774945548894');


SET session_replication_role TO DEFAULT;


