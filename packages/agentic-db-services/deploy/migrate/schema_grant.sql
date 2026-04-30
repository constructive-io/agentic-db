-- Deploy: migrate/schema_grant
-- made with <3 @ constructive.io

-- requires: migrate/full_text_search


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

INSERT INTO metaschema_public.schema_grant (
  id,
  database_id,
  schema_id,
  grantee_name
) VALUES
  ('019ddc1e-6917-713a-bcb8-a0b97ba43b08', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '019ddc1e-68ec-7c89-801c-b87425e84bf0', 'administrator'),
  ('019ddc1e-692e-7d66-8e4e-41de9fcd6359', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '019ddc1e-68ec-7c89-801c-b87425e84bf0', 'authenticated'),
  ('019ddc1e-6943-70b9-aea5-e3c79d5ed1ff', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '019ddc1e-68ec-7c89-801c-b87425e84bf0', 'anonymous'),
  ('019ddc1e-69a3-7e53-b4de-2798a22cad04', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '019ddc1e-68ee-7e2f-b5ac-9921ddfab2fe', 'administrator'),
  ('019ddc1e-69b3-7ab3-9398-c1867de6fc35', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '019ddc1e-68ee-7e2f-b5ac-9921ddfab2fe', 'authenticated'),
  ('019ddc1e-69c4-7036-b770-456e10077781', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '019ddc1e-68ee-7e2f-b5ac-9921ddfab2fe', 'anonymous'),
  ('0536663e-e9e7-d11c-93a6-a80fa6885e87', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'authenticated'),
  ('89fe7dc1-ddaa-7e58-8bc1-e3caba968eea', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'administrator'),
  ('a46a489f-eaa2-8024-2c93-c4fa1b868ed5', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'anonymous');


SET session_replication_role TO DEFAULT;


