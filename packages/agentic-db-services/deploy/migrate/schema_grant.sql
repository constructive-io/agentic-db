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
  ('019d9485-aeb8-7078-8ab2-a7717cd13fbe', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '019d9485-ae98-7486-bdee-7e5665e75d4e', 'administrator'),
  ('019d9485-aeca-79b3-adb0-6abe17acabd6', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '019d9485-ae98-7486-bdee-7e5665e75d4e', 'authenticated'),
  ('019d9485-aeda-71a6-8446-5de224220309', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '019d9485-ae98-7486-bdee-7e5665e75d4e', 'anonymous'),
  ('019d9485-af3a-719f-934a-4a0532ad5e03', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '019d9485-ae99-7c98-95a8-72262cca2013', 'administrator'),
  ('019d9485-af48-78e2-8fc1-6b55fd24d090', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '019d9485-ae99-7c98-95a8-72262cca2013', 'authenticated'),
  ('019d9485-af57-7c29-aa6e-361e0d936bb6', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '019d9485-ae99-7c98-95a8-72262cca2013', 'anonymous'),
  ('1bcd88df-bd8d-4c08-68fd-d587f65cc99b', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'anonymous'),
  ('8af61eb7-8f14-4fd9-621b-9d87dd7c0402', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'administrator'),
  ('d1d33e74-9d7d-f13c-98bc-f2cb0da28c06', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'authenticated');


SET session_replication_role TO DEFAULT;


