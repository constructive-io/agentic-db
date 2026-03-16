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
  ('378b4b5d-6005-474b-80dc-b07bfbbae639', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc15f10-1fd4-453f-651b-f69a8ecc64d6', '99fc28da-5127-47e7-8d63-0facfb94af88'),
  ('a4057109-ea51-45a4-8e84-06e777527ff9', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc15f10-1fd4-453f-651b-f69a8ecc64d6', '3891d1d1-a5d4-4eeb-8190-3f4284580bac'),
  ('bc190702-cb2e-4774-a861-4bda6d96c5a1', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc11478-e8dd-4e1b-6f3a-26b4d752f339', '3891d1d1-a5d4-4eeb-8190-3f4284580bac'),
  ('e7b62eab-c5d3-4883-b65f-898958d2711a', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1d35c-4bca-4aa6-3129-497cf17e7c74', 'eb7af846-9a04-4f24-8436-7650c519e775'),
  ('2564b66d-d103-4b06-b336-cb90743e3e68', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc15355-9569-493c-22f5-114c7c5c1c5f', '99fc28da-5127-47e7-8d63-0facfb94af88'),
  ('3d875eaf-2c66-4db9-aabc-606a8f5b3a6a', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc15355-9569-493c-22f5-114c7c5c1c5f', '3891d1d1-a5d4-4eeb-8190-3f4284580bac'),
  ('3e5c0ba9-1f2a-4493-860c-46b847303bce', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc15355-9569-493c-22f5-114c7c5c1c5f', 'fcb33a1e-030c-4965-9c52-9ad9f4e4c408'),
  ('e8ecd3b5-3c2c-42ee-9ed7-4cf698142ae4', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc190de-3805-4618-f647-779f6633698b', '99fc28da-5127-47e7-8d63-0facfb94af88'),
  ('a1c72498-3504-4a6d-84de-9b810a2f8c45', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc190de-3805-4618-f647-779f6633698b', '3891d1d1-a5d4-4eeb-8190-3f4284580bac'),
  ('d93e4f01-f3f7-4997-847d-2dd8ac50f85b', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc190de-3805-4618-f647-779f6633698b', '01bed430-2ad8-48bb-b309-fb7ec85de28e'),
  ('c8cc3af8-c09e-4323-b43a-886ab5a915da', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1c0d4-dc91-475c-df6e-fb6a6a78144c', '99fc28da-5127-47e7-8d63-0facfb94af88'),
  ('6dd5a11b-fbdf-4a97-80c5-1d810187dfaa', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1c0d4-dc91-475c-df6e-fb6a6a78144c', '3891d1d1-a5d4-4eeb-8190-3f4284580bac'),
  ('4b20358a-ff1e-495d-b8dc-3f7600f901b3', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1c0d4-dc91-475c-df6e-fb6a6a78144c', '01bed430-2ad8-48bb-b309-fb7ec85de28e'),
  ('2e572dfa-3a7f-456c-9f87-e1269d7adfaf', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc182c5-302d-474c-c74c-02be749f675f', '99fc28da-5127-47e7-8d63-0facfb94af88'),
  ('e6c856de-33d5-49ff-941b-67cd1c33e37f', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc182c5-302d-474c-c74c-02be749f675f', '3891d1d1-a5d4-4eeb-8190-3f4284580bac'),
  ('504fabe7-c89a-46cb-99bb-b84dc18311b9', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc182c5-302d-474c-c74c-02be749f675f', '01bed430-2ad8-48bb-b309-fb7ec85de28e'),
  ('bf2882c6-97e1-4c04-9a04-b5087f0cbea0', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc18d87-4174-48d7-4462-65bc8c8940b1', '99fc28da-5127-47e7-8d63-0facfb94af88'),
  ('5d5c952c-7106-416a-8f26-d70980bb7399', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc18d87-4174-48d7-4462-65bc8c8940b1', '3891d1d1-a5d4-4eeb-8190-3f4284580bac'),
  ('7e5ff179-a9e1-4748-9914-ac8badecf376', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc18d87-4174-48d7-4462-65bc8c8940b1', '01bed430-2ad8-48bb-b309-fb7ec85de28e'),
  ('81f28014-7e33-4a5d-b633-193d9ed03d8c', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1e340-94be-4446-ba8f-99e229f64eae', '99fc28da-5127-47e7-8d63-0facfb94af88'),
  ('9480f073-129f-4a09-9e4b-3b31e313a18e', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1e340-94be-4446-ba8f-99e229f64eae', '3891d1d1-a5d4-4eeb-8190-3f4284580bac'),
  ('2114ae1d-7330-4858-97fa-6147c5e76d5e', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1e340-94be-4446-ba8f-99e229f64eae', '01bed430-2ad8-48bb-b309-fb7ec85de28e'),
  ('85f3189f-2fc2-48c1-b819-e975c2d16ea1', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc12c29-ce87-431b-bfca-4e2c6985957d', '99fc28da-5127-47e7-8d63-0facfb94af88'),
  ('378fb232-9eb9-40f0-a1f0-d6d7dafe05fa', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc12c29-ce87-431b-bfca-4e2c6985957d', '3891d1d1-a5d4-4eeb-8190-3f4284580bac'),
  ('e0a7f5ce-a991-43f7-bb86-57fc348c5847', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc12c29-ce87-431b-bfca-4e2c6985957d', 'fcb33a1e-030c-4965-9c52-9ad9f4e4c408'),
  ('15813aec-a8da-4d31-ad2c-e1cc6ad8d501', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc16bea-2648-41c8-18b3-2227bbcea9ab', '99fc28da-5127-47e7-8d63-0facfb94af88'),
  ('f102fcba-286c-41b8-b67f-29d87f0ccf17', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc16bea-2648-41c8-18b3-2227bbcea9ab', '3891d1d1-a5d4-4eeb-8190-3f4284580bac'),
  ('684132c4-7399-4c0d-94e8-497304b7bf84', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc16bea-2648-41c8-18b3-2227bbcea9ab', 'fcb33a1e-030c-4965-9c52-9ad9f4e4c408'),
  ('1463963a-1efb-44d0-a4e7-6883f8602634', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1c7db-8ef4-4173-a16f-af76e1b57ef3', '99fc28da-5127-47e7-8d63-0facfb94af88'),
  ('ae373528-563e-4bde-b295-0fc5d6ad8ad4', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1c7db-8ef4-4173-a16f-af76e1b57ef3', '3891d1d1-a5d4-4eeb-8190-3f4284580bac'),
  ('6952f357-ee02-4d51-bc80-d7b1cfd0138a', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1c7db-8ef4-4173-a16f-af76e1b57ef3', '01bed430-2ad8-48bb-b309-fb7ec85de28e'),
  ('9424821e-7856-4ada-8e25-bacd49a53fc3', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1505b-6c72-48fd-d6c7-1a437c8fcca9', '99fc28da-5127-47e7-8d63-0facfb94af88'),
  ('42b5232b-382e-46ca-91d4-e7689d44c566', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1505b-6c72-48fd-d6c7-1a437c8fcca9', '3891d1d1-a5d4-4eeb-8190-3f4284580bac'),
  ('9609cb39-5166-42a1-a308-e1ee9279e038', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1505b-6c72-48fd-d6c7-1a437c8fcca9', 'fcb33a1e-030c-4965-9c52-9ad9f4e4c408');


SET session_replication_role TO DEFAULT;


