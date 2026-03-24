-- Deploy: migrate/full_text_search
-- made with <3 @ constructive.io

-- requires: migrate/check_constraint


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

INSERT INTO metaschema_public.full_text_search (
  id,
  database_id,
  table_id,
  field_id,
  field_ids,
  weights,
  langs
) VALUES
  ('019d1dbf-dbae-7958-8a0e-73e309a27bde', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-daa0-7aec-93eb-49f5dbb6aab6', '019d1dbf-db9e-7b06-9127-771f6af5fbbd', '{019d1dbf-db25-7b05-8241-976ac0c83075,019d1dbf-db62-78fb-83bc-38bec70ef774}', '{A,B}', '{pg_catalog.simple,pg_catalog.simple}'),
  ('019d1dc1-81ae-7368-bbdd-8b13fd289dbd', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc1-7943-7440-8def-573e1e6f6f09', '019d1dc1-814f-754b-b3e1-5b6b2286dfa5', '{019d1dc1-7b0d-7a0c-8a2e-9fff0ae71495,019d1dc1-7b6c-7e2d-9562-6f338ccb44f3,019d1dc1-7bed-7194-b730-57fdd993d58c,019d1dc1-7c17-77c2-9bea-a96fb9f61c72}', '{A,A,B,C}', '{english,english,english,english}'),
  ('019d1dc1-963d-741b-be20-85c0bcc88536', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc1-8db7-7b09-ba9e-10dc7b8dc6c7', '019d1dc1-95c3-76ff-9450-928fd1e5adea', '{019d1dc1-9017-73cc-bd5f-fdeb9241756d,019d1dc1-9106-757d-9560-d63b504ad444,019d1dc1-90cf-733a-9b3d-91bd47af69d3}', '{A,B,C}', '{english,english,english}'),
  ('019d1dc1-d1b1-7b83-b60a-320f5e8470e2', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc1-c248-7123-a53d-f875b5160479', '019d1dc1-d0ea-7d7f-8edd-a33f183d08f9', '{019d1dc1-c603-7928-8b6a-32824a105622,019d1dc1-c8d3-7cb0-b349-500d093657af,019d1dc1-c744-7959-8d00-ac23d7d8fc30}', '{A,B,C}', '{english,english,english}'),
  ('019d1dc1-fcd4-722f-94ad-d01fdd946694', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc1-e8eb-7979-b530-20d6767d8af3', '019d1dc1-fbe9-71fb-ad3c-07768dfbb39d', '{019d1dc1-ed4e-7f30-9bca-60e91f3854b6,019d1dc1-f27b-7531-b16f-b8834658a780,019d1dc1-eebf-7022-9977-f72ff9e4e195}', '{A,B,C}', '{english,english,english}');


SET session_replication_role TO DEFAULT;


