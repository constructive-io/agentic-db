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
  ('09d7956e-9241-b86b-6133-3bc69896d967', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'sequences', 'ALL', 'authenticated', true),
  ('14096432-e5a9-a8bd-fd64-05bc02b07305', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '100c2ddc-49fa-f18f-8c3d-fb711fa32682', 'sequences', 'ALL', 'administrator', true),
  ('1424c2d7-ea88-2789-b724-d8c17375bc7a', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '87a21bb8-3407-6a13-ce48-d1b40b14c387', 'sequences', 'ALL', 'administrator', true),
  ('2625ed98-742d-ff35-0412-b86cb6f4a58b', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '100c2ddc-49fa-f18f-8c3d-fb711fa32682', 'sequences', 'ALL', 'authenticated', true),
  ('2a8f9bde-39f5-0ef0-768c-ccca3f9e87d8', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'functions', 'ALL', 'anonymous', true),
  ('440008cb-dd9d-a7cf-d398-d691cf131152', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'functions', 'ALL', 'administrator', true),
  ('51ecf877-3ffa-d8d4-9122-b1bd88ad005a', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '100c2ddc-49fa-f18f-8c3d-fb711fa32682', 'functions', 'ALL', 'authenticated', true),
  ('61e205b1-2f8d-0a1b-281b-2c7135de6239', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '87a21bb8-3407-6a13-ce48-d1b40b14c387', 'functions', 'ALL', 'anonymous', true),
  ('6c1ff4a8-9406-b32d-3e67-e6216685f82f', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '100c2ddc-49fa-f18f-8c3d-fb711fa32682', 'tables', 'ALL', 'administrator', true),
  ('75da0d42-ec33-326f-eb05-c3d9619eaa96', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'sequences', 'ALL', 'administrator', true),
  ('76c62be3-660a-85ed-77f6-49295878f8fb', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '87a21bb8-3407-6a13-ce48-d1b40b14c387', 'functions', 'ALL', 'administrator', true),
  ('b06cfcb6-0258-eaa7-09af-9b6c6e8662ab', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '100c2ddc-49fa-f18f-8c3d-fb711fa32682', 'functions', 'ALL', 'administrator', true),
  ('b4c8642c-e559-bf10-59fd-ee5ba4711de1', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'tables', 'ALL', 'administrator', true),
  ('c6b1554b-c92a-cc86-d1c8-b19f19ab01d6', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '87a21bb8-3407-6a13-ce48-d1b40b14c387', 'functions', 'ALL', 'authenticated', true),
  ('cd0783c0-2323-81ed-53dd-1aefab827cf5', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '87a21bb8-3407-6a13-ce48-d1b40b14c387', 'tables', 'ALL', 'administrator', true),
  ('d5ada8b9-ed05-70a6-1a45-537570195292', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '100c2ddc-49fa-f18f-8c3d-fb711fa32682', 'functions', 'ALL', 'anonymous', true),
  ('e91f5ec1-2ca6-8ff4-2f1d-907dd131a03a', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '87a21bb8-3407-6a13-ce48-d1b40b14c387', 'sequences', 'ALL', 'authenticated', true),
  ('f7be4f78-c4ee-faeb-aa56-2a4d1b57cd04', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'functions', 'ALL', 'authenticated', true);


SET session_replication_role TO DEFAULT;


