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
  ('87d6af0e-487f-039d-21f6-836d444c7075', '8ec84715-45cb-2837-1ed2-48d7fa916c81', NULL, '73977af2-89d9-0e71-6ef9-af9eb05df739', 'localhost', 'public-agentic-db-1774160894318'),
  ('7fc40038-0ac0-92fb-f5c4-0b2c8821b0ac', '8ec84715-45cb-2837-1ed2-48d7fa916c81', NULL, '29b90a6a-89d2-0b63-d7ec-64d2b6798fb8', 'localhost', 'admin-agentic-db-1774160894318'),
  ('eae9d923-f62a-dbc5-282a-a39aa7c62ff7', '8ec84715-45cb-2837-1ed2-48d7fa916c81', NULL, '732d0b12-25d0-8213-5958-22b72c58c0ca', 'localhost', 'private-agentic-db-1774160894318'),
  ('e58616c8-80ee-caae-88f8-5df92a3da492', '8ec84715-45cb-2837-1ed2-48d7fa916c81', NULL, '7332bcac-1e4e-e6ba-5ab4-97bc68a8a01c', 'localhost', 'auth-agentic-db-1774160894318'),
  ('b61fffa6-b4a6-b76a-3ae3-7ff195be98cc', '8ec84715-45cb-2837-1ed2-48d7fa916c81', NULL, 'a48f5252-fd73-312b-c516-a630e9473e3c', 'localhost', 'app-public-agentic-db-1774160894318');


SET session_replication_role TO DEFAULT;


