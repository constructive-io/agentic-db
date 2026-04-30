-- Deploy: migrate/default_privilege
-- made with <3 @ constructive.io

-- requires: migrate/schema_grant


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

INSERT INTO metaschema_public.default_privilege (
  id,
  database_id,
  schema_id,
  object_type,
  privilege,
  grantee_name,
  is_grant
) VALUES
  ('019ddc1e-6957-7647-aea3-b5d2c62beb06', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '019ddc1e-68ec-7c89-801c-b87425e84bf0', 'tables', 'ALL', 'administrator', true),
  ('019ddc1e-6965-7dd1-b5b0-2934d3ba85d4', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '019ddc1e-68ec-7c89-801c-b87425e84bf0', 'sequences', 'ALL', 'administrator', true),
  ('019ddc1e-696f-7d33-8eb7-6c42596893e5', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '019ddc1e-68ec-7c89-801c-b87425e84bf0', 'functions', 'ALL', 'administrator', true),
  ('019ddc1e-6979-7e32-b153-e8126b43d7f7', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '019ddc1e-68ec-7c89-801c-b87425e84bf0', 'functions', 'ALL', 'authenticated', true),
  ('019ddc1e-6983-7ff3-8116-9774197a1e5f', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '019ddc1e-68ec-7c89-801c-b87425e84bf0', 'sequences', 'ALL', 'authenticated', true),
  ('019ddc1e-698d-7ffb-b414-02f679a44779', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '019ddc1e-68ec-7c89-801c-b87425e84bf0', 'functions', 'ALL', 'anonymous', true),
  ('019ddc1e-69d5-7058-986b-81277b27d2cc', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '019ddc1e-68ee-7e2f-b5ac-9921ddfab2fe', 'tables', 'ALL', 'administrator', true),
  ('019ddc1e-69e1-7e60-82e2-5d00331e7bde', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '019ddc1e-68ee-7e2f-b5ac-9921ddfab2fe', 'sequences', 'ALL', 'administrator', true),
  ('019ddc1e-69ec-7b7b-9581-7407832ff399', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '019ddc1e-68ee-7e2f-b5ac-9921ddfab2fe', 'functions', 'ALL', 'administrator', true),
  ('019ddc1e-69f6-7b5b-8884-b6f52475be81', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '019ddc1e-68ee-7e2f-b5ac-9921ddfab2fe', 'functions', 'ALL', 'authenticated', true),
  ('019ddc1e-6a00-7da8-bff5-635b77ba7d5c', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '019ddc1e-68ee-7e2f-b5ac-9921ddfab2fe', 'sequences', 'ALL', 'authenticated', true),
  ('019ddc1e-6a0a-7bd7-8f46-f59bf9767b52', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '019ddc1e-68ee-7e2f-b5ac-9921ddfab2fe', 'functions', 'ALL', 'anonymous', true),
  ('2674ba59-8e89-5f38-bc03-596155b47c7b', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'sequences', 'ALL', 'administrator', true),
  ('79a4a5be-304b-1dfa-3b01-766ba6e5ba3b', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'functions', 'ALL', 'authenticated', true),
  ('7fa0dd95-4e67-b6a9-8b99-170e808ee6da', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'functions', 'ALL', 'administrator', true),
  ('9d264c4f-c3b6-345f-a153-fa9cdd32e094', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'functions', 'ALL', 'anonymous', true),
  ('bccb6763-2088-23e1-ed93-7c4a13f53880', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'tables', 'ALL', 'administrator', true),
  ('d9cda3ab-d22c-e958-d931-dbf5de7e1591', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'sequences', 'ALL', 'authenticated', true);


SET session_replication_role TO DEFAULT;


