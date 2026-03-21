-- Deploy: migrate/trigger
-- made with <3 @ constructive.io

-- requires: migrate/index


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

INSERT INTO metaschema_public.trigger (
  id,
  database_id,
  table_id,
  name,
  event,
  function_name
) VALUES
  ('019d11d9-5c5e-7a4f-a22e-7a25ccf4d671', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-5aed-7673-b41b-b11528f73f79', 'users_search_tsv_tsv_insert_tg', NULL, NULL),
  ('019d11d9-5c5f-7b5e-915f-9f99ab351fed', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-5aed-7673-b41b-b11528f73f79', 'users_search_tsv_tsv_update_tg', NULL, NULL),
  ('019d11da-017f-7deb-8df5-35907e874f24', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-fefc-7ea4-b789-25cce72a1503', 'encrypted_secrets_update_tg', NULL, NULL),
  ('019d11da-0180-775f-9ecb-bebbe95881fb', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-fefc-7ea4-b789-25cce72a1503', 'encrypted_secrets_insert_tg', NULL, NULL),
  ('c8fd2ad8-04b6-31ea-e1cb-599ca76ed24a', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '42ead6a6-6a44-9aea-dd48-24dee935bed3', 'contacts_search_tsv_tsv_insert_tg', NULL, NULL),
  ('96bc60b7-33ea-c97c-1415-9287f92a3c6a', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '42ead6a6-6a44-9aea-dd48-24dee935bed3', 'contacts_search_tsv_tsv_update_tg', NULL, NULL),
  ('b98b8f45-c9f4-a29e-ca81-be01f9b147be', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '47f03c4a-8c53-e7b7-34eb-0c1cbd52de78', 'companies_search_tsv_tsv_insert_tg', NULL, NULL),
  ('e60a7a47-e296-48c9-179e-4bcff012f36b', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '47f03c4a-8c53-e7b7-34eb-0c1cbd52de78', 'companies_search_tsv_tsv_update_tg', NULL, NULL),
  ('9e37e885-a8b3-9945-b02b-cb04ed0b566e', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '68df5543-8685-6a65-d6c5-9e87be4862d4', 'events_search_tsv_tsv_insert_tg', NULL, NULL),
  ('17f8ca20-1f6a-6c42-39aa-9c0a5ec253ed', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '68df5543-8685-6a65-d6c5-9e87be4862d4', 'events_search_tsv_tsv_update_tg', NULL, NULL),
  ('c79ef157-2414-f920-a0b5-34842446b186', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '5a36c18f-beff-aae7-efc6-ea0159700669', 'venues_search_tsv_tsv_insert_tg', NULL, NULL),
  ('7557e8ce-0ccd-c582-5020-a4bf34c70df7', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '5a36c18f-beff-aae7-efc6-ea0159700669', 'venues_search_tsv_tsv_update_tg', NULL, NULL),
  ('58d1562b-e9c1-9fc2-68b3-598fbe0430e0', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '80e3e300-51f4-c019-b103-bdca3f9cde02', 'projects_search_tsv_tsv_insert_tg', NULL, NULL),
  ('210c33cc-be5b-df50-b933-e28f782f3eaf', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '80e3e300-51f4-c019-b103-bdca3f9cde02', 'projects_search_tsv_tsv_update_tg', NULL, NULL),
  ('13b5a3a6-8485-8328-4fcf-a09183540b9c', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '74e9e386-ff33-af2f-d6c0-f6dd0d7ee0b2', 'documents_search_tsv_tsv_insert_tg', NULL, NULL),
  ('85f6bafb-2f3f-2e46-4799-98e17dd669e9', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '74e9e386-ff33-af2f-d6c0-f6dd0d7ee0b2', 'documents_search_tsv_tsv_update_tg', NULL, NULL);


SET session_replication_role TO DEFAULT;


