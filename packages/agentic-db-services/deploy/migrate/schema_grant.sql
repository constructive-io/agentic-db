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
  ('019ddbfb-bfee-7c28-84ef-d81769e203bc', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '019ddbfb-bfcf-7c0b-a73e-4a47f7af4399', 'administrator'),
  ('019ddbfb-bfff-77ee-b235-8c64ed20062f', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '019ddbfb-bfcf-7c0b-a73e-4a47f7af4399', 'authenticated'),
  ('019ddbfb-c00e-7fa9-ab18-32f6a31aff0a', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '019ddbfb-bfcf-7c0b-a73e-4a47f7af4399', 'anonymous'),
  ('019ddbfb-c072-7f64-9336-5c172970da08', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '019ddbfb-bfd1-733f-8832-56f46ded11d8', 'administrator'),
  ('019ddbfb-c081-7967-bd7d-cbbd29f83338', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '019ddbfb-bfd1-733f-8832-56f46ded11d8', 'authenticated'),
  ('019ddbfb-c091-74b0-b13b-eec95af19e92', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '019ddbfb-bfd1-733f-8832-56f46ded11d8', 'anonymous'),
  ('032f856d-8f47-ea78-24fd-dee0f782d6bc', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'authenticated'),
  ('12e4834f-cc0d-8f06-9864-126d7b4e4d86', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'administrator'),
  ('f7a5981e-6328-c0af-ed92-34f57765f985', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'anonymous');


SET session_replication_role TO DEFAULT;


