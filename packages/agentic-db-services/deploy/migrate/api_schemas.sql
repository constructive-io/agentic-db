-- Deploy: migrate/api_schemas
-- made with <3 @ constructive.io

-- requires: migrate/api_modules


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

INSERT INTO services_public.api_schemas (
  id,
  database_id,
  schema_id,
  api_id
) VALUES
  ('019d1dbf-da11-7bfa-ac2e-d589e1ade894', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-d800-752b-ad00-cfd3e9b6b449', '019d1dbf-da0f-742b-bbfd-50c76f1a7282'),
  ('019d1dbf-da13-7c6e-9944-15a6e5b0121d', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-d800-752b-ad00-cfd3e9b6b449', '019d1dbf-da10-7aec-976f-d381394c44c4'),
  ('019d1dbf-da14-76cd-9dae-0d6f940fe5d2', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-d801-7f3c-a7f6-897ce7071d54', '019d1dbf-da10-7aec-976f-d381394c44c4'),
  ('019d1dbf-da15-71e2-bc18-0d3571d2e949', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-d916-7f9e-b053-cd834ccf7c73', '019d1dbf-da11-754e-acc8-6f81717e01a5'),
  ('019d1dbf-da9e-735a-8364-1f589cd27a2a', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-da1b-74e1-ad0c-325e810d428a', '019d1dbf-da0f-742b-bbfd-50c76f1a7282'),
  ('019d1dbf-da9f-71dd-a486-0050f92749ff', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-da1b-74e1-ad0c-325e810d428a', '019d1dbf-da10-7aec-976f-d381394c44c4'),
  ('019d1dbf-da9f-7d5d-aa3c-00e12cff81be', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-da1b-74e1-ad0c-325e810d428a', '019d1dbf-da10-7dcc-a85e-789869fd3615'),
  ('019d1dbf-e0b2-7490-9e1b-4afac114d976', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-dfa6-7e3d-bdb1-3ff7b34348ef', '019d1dbf-da0f-742b-bbfd-50c76f1a7282'),
  ('019d1dbf-e0b3-7346-86eb-f8ecc452e78e', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-dfa6-7e3d-bdb1-3ff7b34348ef', '019d1dbf-da10-7aec-976f-d381394c44c4'),
  ('019d1dbf-e0b3-7937-87f9-09b21592c1f7', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-dfa6-7e3d-bdb1-3ff7b34348ef', '019d1dbf-da10-7327-9f94-5bd9fec62b8f'),
  ('019d1dbf-e47b-7922-9073-7490bc00b90f', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-e374-7235-b758-72d345f56181', '019d1dbf-da0f-742b-bbfd-50c76f1a7282'),
  ('019d1dbf-e47c-7826-9f55-6cff5af00bdc', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-e374-7235-b758-72d345f56181', '019d1dbf-da10-7aec-976f-d381394c44c4'),
  ('019d1dbf-e47c-7d5e-8c08-cd04d27a3161', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-e374-7235-b758-72d345f56181', '019d1dbf-da10-7327-9f94-5bd9fec62b8f'),
  ('019d1dbf-e786-7cc6-963d-8cd8e1710b08', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-ddbb-7fbf-9505-8db63eca57ee', '019d1dbf-da0f-742b-bbfd-50c76f1a7282'),
  ('019d1dbf-e859-7cd3-aeb1-99c33e28f1fe', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-ddbb-7fbf-9505-8db63eca57ee', '019d1dbf-da10-7aec-976f-d381394c44c4'),
  ('019d1dbf-e92a-78fd-8b13-889867762ac8', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-ddbb-7fbf-9505-8db63eca57ee', '019d1dbf-da10-7327-9f94-5bd9fec62b8f'),
  ('019d1dbf-fa06-74d1-b00e-58bb73dde9f6', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-f8da-7041-87cd-74e01456db0c', '019d1dbf-da0f-742b-bbfd-50c76f1a7282'),
  ('019d1dbf-fa07-7998-b67a-0e7a41ead61d', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-f8da-7041-87cd-74e01456db0c', '019d1dbf-da10-7aec-976f-d381394c44c4'),
  ('019d1dbf-fa08-724d-ac5a-ea2e69208160', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-f8da-7041-87cd-74e01456db0c', '019d1dbf-da10-7327-9f94-5bd9fec62b8f'),
  ('019d1dc0-044c-78ad-9e2f-5262e702b01e', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-030c-71b5-8d95-fe3ed949ed16', '019d1dbf-da0f-742b-bbfd-50c76f1a7282'),
  ('019d1dc0-044d-7f29-a79b-8d7db5648881', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-030c-71b5-8d95-fe3ed949ed16', '019d1dbf-da10-7aec-976f-d381394c44c4'),
  ('019d1dc0-044e-7a0e-b7f9-0169654318af', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-030c-71b5-8d95-fe3ed949ed16', '019d1dbf-da10-7327-9f94-5bd9fec62b8f'),
  ('019d1dc0-870e-7a9a-abe5-87625e7f7fce', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-8646-78cc-8723-be1a92282296', '019d1dbf-da0f-742b-bbfd-50c76f1a7282'),
  ('019d1dc0-8711-7390-b9c8-00dd0305a436', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-8646-78cc-8723-be1a92282296', '019d1dbf-da10-7aec-976f-d381394c44c4'),
  ('019d1dc0-8712-7b1e-bbb5-47a21a34dc4f', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-8646-78cc-8723-be1a92282296', '019d1dbf-da10-7dcc-a85e-789869fd3615'),
  ('019d1dc0-8921-7398-9de2-543b93b14621', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-877b-7228-a004-e1126128d743', '019d1dbf-da0f-742b-bbfd-50c76f1a7282'),
  ('019d1dc0-8923-7714-80b1-870c0bc43aad', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-877b-7228-a004-e1126128d743', '019d1dbf-da10-7aec-976f-d381394c44c4'),
  ('019d1dc0-8924-7f2b-b7e5-38506da6ffec', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-877b-7228-a004-e1126128d743', '019d1dbf-da10-7dcc-a85e-789869fd3615'),
  ('019d1dc0-9d2e-76c1-8c97-956aa3bea87b', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-9c66-768f-aad1-253050d10132', '019d1dbf-da0f-742b-bbfd-50c76f1a7282'),
  ('019d1dc0-9d30-7bc3-987b-54994b12458b', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-9c66-768f-aad1-253050d10132', '019d1dbf-da10-7aec-976f-d381394c44c4'),
  ('019d1dc0-9d32-7681-bb0f-32e49bf078b6', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-9c66-768f-aad1-253050d10132', '019d1dbf-da10-7327-9f94-5bd9fec62b8f'),
  ('019d1dc0-b4e9-7540-b3fc-4277337acbbd', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-b3ff-7ebd-81bf-a2b6f38198c3', '019d1dbf-da0f-742b-bbfd-50c76f1a7282'),
  ('019d1dc0-b539-77d8-bbf4-6fd3d2d26989', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-b3ff-7ebd-81bf-a2b6f38198c3', '019d1dbf-da10-7aec-976f-d381394c44c4'),
  ('019d1dc0-b58a-7abd-a7f2-f32b4823f77c', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-b3ff-7ebd-81bf-a2b6f38198c3', '019d1dbf-da10-7dcc-a85e-789869fd3615');


SET session_replication_role TO DEFAULT;


