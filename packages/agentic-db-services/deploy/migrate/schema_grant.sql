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
  ('019d934f-852e-75f2-a8be-db7c32079c19', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-850b-7813-9f83-812ad0c59d9b', 'administrator'),
  ('019d934f-8540-73bc-9d0e-3a97b508f3b6', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-850b-7813-9f83-812ad0c59d9b', 'authenticated'),
  ('019d934f-8550-771d-82c2-ad709b0af029', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-850b-7813-9f83-812ad0c59d9b', 'anonymous'),
  ('019d934f-8609-7293-ada8-9a92d0387a11', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-850d-75d9-a768-aec5360b75e3', 'administrator'),
  ('019d934f-8621-7bec-938a-07468075d329', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-850d-75d9-a768-aec5360b75e3', 'authenticated'),
  ('019d934f-863a-7c2e-ab16-abf3789d9011', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-850d-75d9-a768-aec5360b75e3', 'anonymous'),
  ('019d934f-86e8-74f5-9c8a-664ab0a77433', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-86cf-719c-a1e1-ae00d64d62a7', 'administrator'),
  ('019d934f-8704-7462-a6dd-d1714cefaa02', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-86cf-719c-a1e1-ae00d64d62a7', 'authenticated'),
  ('019d934f-8721-72b4-82f7-ca6451b5e3b3', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-86cf-719c-a1e1-ae00d64d62a7', 'anonymous'),
  ('019d934f-87d4-77ab-8d6c-1639e9e52981', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-87bc-7e14-aa13-ebee531db15d', 'administrator'),
  ('019d934f-87ee-70e0-bc4b-43efbf1e131d', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-87bc-7e14-aa13-ebee531db15d', 'authenticated'),
  ('019d934f-8807-7f36-bcdf-1b2e31c978c0', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-87bc-7e14-aa13-ebee531db15d', 'anonymous'),
  ('019d934f-88c8-77c5-b665-3a2cc8d52b36', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-88b0-7c44-8fef-6ea1f4259d3a', 'administrator'),
  ('019d934f-88e0-7948-a79d-f58e0615ae63', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-88b0-7c44-8fef-6ea1f4259d3a', 'authenticated'),
  ('019d934f-88f9-7339-8103-a3d6a2c68fbc', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-88b0-7c44-8fef-6ea1f4259d3a', 'anonymous'),
  ('019d934f-8e51-784a-984c-6991dac1efad', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-8e3d-704c-8fdf-d84d858c8b17', 'administrator'),
  ('019d934f-8e6a-771a-9b5b-4806b20b7757', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-8e3d-704c-8fdf-d84d858c8b17', 'authenticated'),
  ('019d934f-8e82-7aa2-966a-4f1cac2efd3a', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-8e3d-704c-8fdf-d84d858c8b17', 'anonymous'),
  ('019d934f-9154-7ddb-9184-5aedbb3a3547', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-913f-7c73-8f48-1dbb423814b9', 'administrator'),
  ('019d934f-916e-7288-86a1-73bc4899f947', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-913f-7c73-8f48-1dbb423814b9', 'authenticated'),
  ('019d934f-9187-7b39-b85e-4fa1b6f7d7eb', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-913f-7c73-8f48-1dbb423814b9', 'anonymous'),
  ('019d934f-922f-7804-bfb1-a1da060cd8b9', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-9218-7cd9-857b-02961dca2504', 'administrator'),
  ('019d934f-9248-73f6-9cc1-7dfca14105ff', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-9218-7cd9-857b-02961dca2504', 'authenticated'),
  ('019d934f-9260-7586-9742-e7f7547516c9', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-9218-7cd9-857b-02961dca2504', 'anonymous'),
  ('019d934f-9744-7248-93e0-bb98ea6b0b88', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-972e-7422-8b8c-2f12fe866d0f', 'administrator'),
  ('019d934f-975e-7147-8bac-1628afa1b1e3', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-972e-7422-8b8c-2f12fe866d0f', 'authenticated'),
  ('019d934f-9778-796e-80a4-dc35c8420b69', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-972e-7422-8b8c-2f12fe866d0f', 'anonymous'),
  ('019d934f-9823-7489-9929-2a50388d84df', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-980b-72b0-a3e0-4e3c2a56ca1e', 'administrator'),
  ('019d934f-983c-74ab-aa75-28b0f20d3e8c', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-980b-72b0-a3e0-4e3c2a56ca1e', 'authenticated'),
  ('019d934f-9855-7f03-b2d3-1d89a45bda1b', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-980b-72b0-a3e0-4e3c2a56ca1e', 'anonymous'),
  ('019d934f-9d04-7542-9df3-34e1357097a1', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-9cee-7bae-93fd-ad757080ee4a', 'administrator'),
  ('019d934f-9d1e-7212-8db1-86b0fa819a20', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-9cee-7bae-93fd-ad757080ee4a', 'authenticated'),
  ('019d934f-9d38-7d7a-ba8e-ea6ad48be119', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-9cee-7bae-93fd-ad757080ee4a', 'anonymous'),
  ('019d934f-b45f-71fa-8203-d5fd5e265ba7', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-b449-7b86-b434-c6dcc727af17', 'administrator'),
  ('019d934f-b478-74a7-9287-2cea8a5410df', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-b449-7b86-b434-c6dcc727af17', 'authenticated'),
  ('019d934f-b495-73ce-810d-2e604e0f876b', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-b449-7b86-b434-c6dcc727af17', 'anonymous'),
  ('019d934f-b54c-7432-9b34-4ca790371da5', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-b534-709a-a6b2-49b1d3cf925e', 'administrator'),
  ('019d934f-b565-7b4a-9d5c-b853e2746269', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-b534-709a-a6b2-49b1d3cf925e', 'authenticated'),
  ('019d934f-b581-7367-828d-7af02e08cd5f', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-b534-709a-a6b2-49b1d3cf925e', 'anonymous'),
  ('019d934f-c338-70cb-9be1-95b65526b796', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-c321-78b7-be72-01cbadd6f3c0', 'administrator'),
  ('019d934f-c352-7c81-a24e-1042410a4815', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-c321-78b7-be72-01cbadd6f3c0', 'authenticated'),
  ('019d934f-c36c-7b4c-9835-4f32aa61ec1b', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-c321-78b7-be72-01cbadd6f3c0', 'anonymous'),
  ('019d934f-c425-7ef3-8163-994ddbabcd5f', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-c40c-753c-b9d1-b4c643b5f733', 'administrator'),
  ('019d934f-c440-757f-8d44-6c26691cf68a', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-c40c-753c-b9d1-b4c643b5f733', 'authenticated'),
  ('019d934f-c45c-7078-8f98-c4ce35988c31', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-c40c-753c-b9d1-b4c643b5f733', 'anonymous'),
  ('019d9350-4860-767b-bcca-51650d6dbf9e', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-4845-785b-93f6-30547a07a580', 'administrator'),
  ('019d9350-487e-7c29-9947-73d692756246', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-4845-785b-93f6-30547a07a580', 'authenticated'),
  ('019d9350-489c-77be-8e2e-b8d52ca0f51d', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-4845-785b-93f6-30547a07a580', 'anonymous'),
  ('019d9350-4d78-7a45-8dbd-56145680479f', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-4d5c-7d60-bb51-0825b3c10185', 'administrator'),
  ('019d9350-4d96-76e1-b5ce-e9c16a1740b9', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-4d5c-7d60-bb51-0825b3c10185', 'authenticated'),
  ('019d9350-4db4-7339-9952-bce15462d39a', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-4d5c-7d60-bb51-0825b3c10185', 'anonymous'),
  ('019d9350-6282-7273-95ef-48eddb3f9402', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-6266-7279-99ec-06e05a2db139', 'administrator'),
  ('019d9350-62a3-76a1-be7c-21e939bdcd63', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-6266-7279-99ec-06e05a2db139', 'authenticated'),
  ('019d9350-62c3-727e-bd77-d61ac048c2e6', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-6266-7279-99ec-06e05a2db139', 'anonymous'),
  ('019d9350-682c-799a-b2f3-1a862563aca9', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-6805-764f-b39f-ecdabb8e06b8', 'administrator'),
  ('019d9350-684e-7c1e-b0cf-1c70f54dc237', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-6805-764f-b39f-ecdabb8e06b8', 'authenticated'),
  ('019d9350-6872-7340-9780-73c3240b8d1f', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-6805-764f-b39f-ecdabb8e06b8', 'anonymous'),
  ('019d9350-6ac1-7a76-bb8f-0fa0194b834e', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-6aa4-7889-a98e-8295bc192844', 'administrator'),
  ('019d9350-6ae1-71e8-be4d-75528b102c54', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-6aa4-7889-a98e-8295bc192844', 'authenticated'),
  ('019d9350-6b02-7aa4-a2c0-26d3381c3a9a', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-6aa4-7889-a98e-8295bc192844', 'anonymous'),
  ('019d9350-6bef-7a7c-96f3-6c24c0ef0739', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-6bd1-721a-ada9-5d48abfdaf4a', 'administrator'),
  ('019d9350-6c0f-7e6c-9bfe-ee6d9a305fef', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-6bd1-721a-ada9-5d48abfdaf4a', 'authenticated'),
  ('019d9350-6c2f-7e87-bb7d-3b7f649f9590', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-6bd1-721a-ada9-5d48abfdaf4a', 'anonymous'),
  ('019d9350-8148-7511-bbad-a5b37eedef90', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-812d-747c-959c-e981a902de13', 'administrator'),
  ('019d9350-8168-73a8-ad31-9e8486571426', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-812d-747c-959c-e981a902de13', 'authenticated'),
  ('019d9350-8188-7adf-830b-593a78573da4', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-812d-747c-959c-e981a902de13', 'anonymous'),
  ('019d9350-8280-7224-98eb-301eee4a7fd7', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-825f-777d-81e4-cd0520555cc8', 'administrator'),
  ('019d9350-829f-7fde-aada-6a485ed098fd', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-825f-777d-81e4-cd0520555cc8', 'authenticated'),
  ('019d9350-82c1-77d7-98eb-f9329a39ec29', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-825f-777d-81e4-cd0520555cc8', 'anonymous'),
  ('019d9350-a1ac-7164-abdd-19b12bc7473f', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-a18e-74d0-9ec0-a47b53b0feb0', 'administrator'),
  ('019d9350-a1cc-764d-9175-8d010aa540b3', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-a18e-74d0-9ec0-a47b53b0feb0', 'authenticated'),
  ('019d9350-a1ed-791c-bc9f-6ff0716f43e7', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-a18e-74d0-9ec0-a47b53b0feb0', 'anonymous'),
  ('019d9350-aac0-7143-9cf4-f056eb50efa9', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-aa9f-7d47-aa40-23a84c5587a1', 'administrator'),
  ('019d9350-aae4-71b9-a6c8-87c139d1ef4b', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-aa9f-7d47-aa40-23a84c5587a1', 'authenticated'),
  ('019d9350-ab06-73c1-8bb6-4c65ee2e9e43', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-aa9f-7d47-aa40-23a84c5587a1', 'anonymous'),
  ('019d9350-ac01-76ea-a8af-be398b594ade', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-abe0-7055-a646-5c04848c6d72', 'administrator'),
  ('019d9350-ac22-7aee-8d0f-11f84a6cedf3', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-abe0-7055-a646-5c04848c6d72', 'authenticated'),
  ('019d9350-ac43-7f03-9bc9-bcbc9ede24ca', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-abe0-7055-a646-5c04848c6d72', 'anonymous');


SET session_replication_role TO DEFAULT;


