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
  ('019d11d9-5c5d-76f2-af8f-ddedefed6a16', '019d11d9-57e6-748d-91f1-8d571d4d7f22', 'users_search_tsv_tsv', NULL),
  ('019d11da-017d-74b1-ba58-7d3604bf311c', '019d11d9-57e6-748d-91f1-8d571d4d7f22', 'encrypted_secrets_hash', NULL),
  ('ca2b8e15-103d-1481-0943-fcbc7825ea0b', '019d11d9-57e6-748d-91f1-8d571d4d7f22', 'contacts_search_tsv_tsv', NULL),
  ('67ef5cff-2852-798a-1f72-35648a7162b9', '019d11d9-57e6-748d-91f1-8d571d4d7f22', 'companies_search_tsv_tsv', NULL),
  ('060b67d6-0220-f54a-0200-92d59564ce53', '019d11d9-57e6-748d-91f1-8d571d4d7f22', 'events_search_tsv_tsv', NULL),
  ('6a873227-86d1-a612-cb23-e67c54d7c94a', '019d11d9-57e6-748d-91f1-8d571d4d7f22', 'venues_search_tsv_tsv', NULL),
  ('1d9dd80a-8c35-dc87-fcbe-50dd6845aa58', '019d11d9-57e6-748d-91f1-8d571d4d7f22', 'projects_search_tsv_tsv', NULL),
  ('feb2a24e-bb9a-fdde-a9dc-1930243f6222', '019d11d9-57e6-748d-91f1-8d571d4d7f22', 'documents_search_tsv_tsv', NULL);


SET session_replication_role TO DEFAULT;


