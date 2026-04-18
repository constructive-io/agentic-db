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
  ('00c4be1b-d0b6-2407-5f6c-710969af3807', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '100c2ddc-49fa-f18f-8c3d-fb711fa32682', 'administrator'),
  ('43b5b457-959d-98bd-4a06-76070c1fec6d', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '100c2ddc-49fa-f18f-8c3d-fb711fa32682', 'anonymous'),
  ('47b5d722-aecc-40d9-ff56-63b58b7e2f40', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '87a21bb8-3407-6a13-ce48-d1b40b14c387', 'authenticated'),
  ('71ca9718-2aca-8a39-80eb-ef04c3178900', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'administrator'),
  ('7deaa143-355a-d77a-924b-cf65c245b923', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'anonymous'),
  ('c5bc2d61-1b06-d7b0-1396-fd505e3d1a9d', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '87a21bb8-3407-6a13-ce48-d1b40b14c387', 'anonymous'),
  ('c6bba533-1859-4479-b43e-13ee7e7cff4f', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '100c2ddc-49fa-f18f-8c3d-fb711fa32682', 'authenticated'),
  ('d077764d-832d-916a-fb56-f246ab67a25f', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '87a21bb8-3407-6a13-ce48-d1b40b14c387', 'administrator'),
  ('d5bae54a-4ab2-3662-499c-90ab6c9e857a', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'authenticated');


SET session_replication_role TO DEFAULT;


