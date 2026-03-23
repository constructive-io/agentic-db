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
  ('607961dd-6ca4-659c-21c1-c789132b6df4', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '0d110a49-7d72-7da5-b7e0-6723b10451ca', '0d110a49-7d72-7da5-b7e0-6723b10451ca'),
  ('904c9b78-ead2-ff4e-f7c3-09545671233d', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '0d110a49-7d72-7da5-b7e0-6723b10451ca', 'b24bcaa5-c86c-47d1-8a22-44a1add68332'),
  ('dc94847d-9a8a-8c24-2912-e41797499ccf', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'b24bcaa5-c86c-47d1-8a22-44a1add68332', 'b24bcaa5-c86c-47d1-8a22-44a1add68332'),
  ('af19806e-cbea-20ce-76b7-a74e2414541d', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '57f59ebf-2bbd-02cc-078c-24de57b20d72', 'c670542b-e71a-3b31-7baa-e34ec9e7be7f'),
  ('794d3371-98f7-b694-9a70-2dbb982b30da', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'e3016d98-2f74-e10d-e261-1f344b73221c', '0d110a49-7d72-7da5-b7e0-6723b10451ca'),
  ('d33d277e-5f38-9b74-f10c-812d524d1af8', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'e3016d98-2f74-e10d-e261-1f344b73221c', 'b24bcaa5-c86c-47d1-8a22-44a1add68332'),
  ('0ae67167-b4bf-a39a-9ca0-12ad007ae9ff', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'e3016d98-2f74-e10d-e261-1f344b73221c', 'b0aba09f-b31b-7c5b-7d40-0d3e2c7faffa'),
  ('2fb42d7f-1c52-3030-2e1c-e77d41e3eb30', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '1eb676bd-efec-b03f-c481-02d66f5661b4', '0d110a49-7d72-7da5-b7e0-6723b10451ca'),
  ('886caace-ebd7-81da-e53c-affbed04efdb', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '1eb676bd-efec-b03f-c481-02d66f5661b4', 'b24bcaa5-c86c-47d1-8a22-44a1add68332'),
  ('a9b915d5-4850-c61c-0a05-9f7c4b6ff7fc', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '1eb676bd-efec-b03f-c481-02d66f5661b4', 'd7480806-c43a-1d0b-b307-493e39b96eb9'),
  ('c2db9fd8-9618-201e-e77e-2c13c8988254', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'd1dc6b60-1fea-6c67-edaf-861a5409e953', '0d110a49-7d72-7da5-b7e0-6723b10451ca'),
  ('b8fbde9f-a77e-a7e5-b41f-8e84e8a2deaf', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'd1dc6b60-1fea-6c67-edaf-861a5409e953', 'b24bcaa5-c86c-47d1-8a22-44a1add68332'),
  ('c3cfa235-d5a1-eb97-b335-e18034a6571a', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'd1dc6b60-1fea-6c67-edaf-861a5409e953', 'd7480806-c43a-1d0b-b307-493e39b96eb9'),
  ('5ec7236b-8443-d5c7-693d-b7a003bb0e95', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'b6a5ec83-0ccd-ffd2-6986-03855824ead2', '0d110a49-7d72-7da5-b7e0-6723b10451ca'),
  ('9a11962d-c926-1464-1ff7-86575f684e2f', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'b6a5ec83-0ccd-ffd2-6986-03855824ead2', 'b24bcaa5-c86c-47d1-8a22-44a1add68332'),
  ('d889fabb-a3ec-4f82-3710-c69f5c59f62e', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'b6a5ec83-0ccd-ffd2-6986-03855824ead2', 'd7480806-c43a-1d0b-b307-493e39b96eb9'),
  ('7a2c13b5-7e84-e254-1825-ce8256fc1f41', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '87da6cfc-f93f-9650-e6d0-ee5ec4efcb31', '0d110a49-7d72-7da5-b7e0-6723b10451ca'),
  ('0eac54dc-685b-3733-f835-ac674ca19fc4', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '87da6cfc-f93f-9650-e6d0-ee5ec4efcb31', 'b24bcaa5-c86c-47d1-8a22-44a1add68332'),
  ('37e961f6-7e62-3097-922e-c26b349c3d99', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '87da6cfc-f93f-9650-e6d0-ee5ec4efcb31', 'd7480806-c43a-1d0b-b307-493e39b96eb9'),
  ('7021d8a3-a13f-5e22-270e-9c946e86867f', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'dcd1ab85-9748-27a6-2adf-15fffd2ac95d', '0d110a49-7d72-7da5-b7e0-6723b10451ca'),
  ('a6a3d20d-1eaa-f222-478c-5cb87545d8a7', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'dcd1ab85-9748-27a6-2adf-15fffd2ac95d', 'b24bcaa5-c86c-47d1-8a22-44a1add68332'),
  ('670baa08-d5f3-c289-e74b-104b6f893d99', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'dcd1ab85-9748-27a6-2adf-15fffd2ac95d', 'd7480806-c43a-1d0b-b307-493e39b96eb9'),
  ('420bc8e0-b46a-cddb-0a1a-100e12b63ce5', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '4a9a13b9-d2a2-cc30-855d-7b0727cfcc25', '0d110a49-7d72-7da5-b7e0-6723b10451ca'),
  ('b5bd51e0-9c3e-7cbd-57d1-858195eb0638', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '4a9a13b9-d2a2-cc30-855d-7b0727cfcc25', 'b24bcaa5-c86c-47d1-8a22-44a1add68332'),
  ('2ae500ac-4e8a-2987-3c58-ebe03b18d7d8', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '4a9a13b9-d2a2-cc30-855d-7b0727cfcc25', 'b0aba09f-b31b-7c5b-7d40-0d3e2c7faffa'),
  ('b10eeee8-a870-38cc-a9d3-187d1f294488', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'f8aa7ca8-38f6-d759-7629-8b4d99b9eca7', '0d110a49-7d72-7da5-b7e0-6723b10451ca'),
  ('6633ac86-2a2b-b721-0643-70c2d62705e0', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'f8aa7ca8-38f6-d759-7629-8b4d99b9eca7', 'b24bcaa5-c86c-47d1-8a22-44a1add68332'),
  ('cb3970d6-dd9b-3e33-4857-241e53e9568b', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'f8aa7ca8-38f6-d759-7629-8b4d99b9eca7', 'b0aba09f-b31b-7c5b-7d40-0d3e2c7faffa'),
  ('da13ff4c-2e79-3b73-baab-992b9f6eec4a', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '66adacfb-2f2a-8624-f08e-87d9239e2c72', '0d110a49-7d72-7da5-b7e0-6723b10451ca'),
  ('326eef6c-fa04-dbd3-515a-6c3f15c53cab', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '66adacfb-2f2a-8624-f08e-87d9239e2c72', 'b24bcaa5-c86c-47d1-8a22-44a1add68332'),
  ('601a0f9e-6763-d880-44d6-2b7a6eb76b23', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '66adacfb-2f2a-8624-f08e-87d9239e2c72', 'd7480806-c43a-1d0b-b307-493e39b96eb9'),
  ('98b817f7-5ba2-d3df-7995-553479b88cdc', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '86191c7a-22fc-db1f-3808-cd00ead6a666', '0d110a49-7d72-7da5-b7e0-6723b10451ca'),
  ('5639d781-35e8-f736-ff2e-2d0d2ba15a51', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '86191c7a-22fc-db1f-3808-cd00ead6a666', 'b24bcaa5-c86c-47d1-8a22-44a1add68332'),
  ('81f4e9ef-3e87-240a-d93b-15926b0aa941', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '86191c7a-22fc-db1f-3808-cd00ead6a666', 'b0aba09f-b31b-7c5b-7d40-0d3e2c7faffa');


SET session_replication_role TO DEFAULT;


