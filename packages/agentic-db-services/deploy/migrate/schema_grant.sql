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
  ('019d937b-b6a8-72bd-a01a-0056ffb8bb13', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-b682-77d7-8778-efebf99aa040', 'administrator'),
  ('019d937b-b6ba-7c18-92ac-9b694278d0d8', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-b682-77d7-8778-efebf99aa040', 'authenticated'),
  ('019d937b-b6cb-73f7-9214-f02adcbb6fa7', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-b682-77d7-8778-efebf99aa040', 'anonymous'),
  ('019d937b-b7a1-79f6-a6ae-9d1c14831caa', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-b684-7879-9eab-a1e9699dccc5', 'administrator'),
  ('019d937b-b7bc-7e8c-bad9-3e59cff61d49', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-b684-7879-9eab-a1e9699dccc5', 'authenticated'),
  ('019d937b-b7d9-75b1-b952-72561f461473', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-b684-7879-9eab-a1e9699dccc5', 'anonymous'),
  ('019d937b-d628-7f65-8451-d0d2ebaa1c36', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'administrator'),
  ('019d937b-d659-7004-a190-c50d34699b67', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'authenticated'),
  ('019d937b-d688-7569-b2fc-765f16d97383', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'anonymous');


SET session_replication_role TO DEFAULT;


