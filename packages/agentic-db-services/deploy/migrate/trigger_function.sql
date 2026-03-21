-- Deploy: migrate/trigger_function
-- made with <3 @ constructive.io

-- requires: migrate/trigger


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

INSERT INTO metaschema_public.trigger_function (
  id,
  database_id,
  name,
  code
) VALUES
  ('019d0ffe-51f9-7b25-a188-0c4e6b84b001', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'users_search_tsv_tsv', NULL),
  ('019d0ffe-eac4-7bc2-92f4-277bb85d5071', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'encrypted_secrets_hash', NULL),
  ('b111df15-20f7-258e-8a95-0f2888d0713c', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'contacts_search_tsv_tsv', NULL),
  ('ede0cf78-40cd-bfc2-f3c5-01ee364f9dfe', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'companies_search_tsv_tsv', NULL),
  ('697b9e24-9d89-cc9b-ab61-918da12411e9', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'events_search_tsv_tsv', NULL),
  ('99d0e387-79ea-2f2c-ca16-c24cf3341ba8', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'venues_search_tsv_tsv', NULL),
  ('ba5f5d43-94c1-af12-ca0e-732e69b20274', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'projects_search_tsv_tsv', NULL),
  ('f3caa74c-4ce8-0195-00b9-e4cf50996bee', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'documents_search_tsv_tsv', NULL);


SET session_replication_role TO DEFAULT;


