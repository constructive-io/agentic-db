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
  ('019d416f-3596-792e-ad25-66d805c9c072', '019d416f-3253-7543-a058-30ea5a6b7e37', NULL, '019d416f-3768-75f3-9522-4a3045c95593', 'localhost', 'public-agentic-db-1774919295152'),
  ('019d416f-3597-730f-b6f5-0383470ab16e', '019d416f-3253-7543-a058-30ea5a6b7e37', NULL, '019d416f-3769-78ea-bed9-9244b3e758b1', 'localhost', 'admin-agentic-db-1774919295152'),
  ('019d416f-3597-76b3-b31f-79aea573e339', '019d416f-3253-7543-a058-30ea5a6b7e37', NULL, '019d416f-376a-713e-9f3d-294bfd28077e', 'localhost', 'private-agentic-db-1774919295152'),
  ('019d416f-3597-79ff-9c3c-56dac6286415', '019d416f-3253-7543-a058-30ea5a6b7e37', NULL, '019d416f-376a-74ce-9034-d3e98ab93c81', 'localhost', 'auth-agentic-db-1774919295152'),
  ('019d416f-3597-7d44-9de2-730e84f71117', '019d416f-3253-7543-a058-30ea5a6b7e37', NULL, '019d416f-376a-7c39-a596-0da64d95bb43', 'localhost', 'app-public-agentic-db-1774919295152');


SET session_replication_role TO DEFAULT;


