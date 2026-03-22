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
  ('019d13bc-1f4b-7efb-9142-13627db52f8a', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-1f2e-7f3b-906e-d1efd67d6426', 'administrator'),
  ('019d13bc-1f5c-71e8-a7aa-25aa9259961a', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-1f2e-7f3b-906e-d1efd67d6426', 'authenticated'),
  ('019d13bc-1f6a-7441-b165-5bc4bfd50f7b', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-1f2e-7f3b-906e-d1efd67d6426', 'anonymous'),
  ('019d13bc-1fc7-733a-9438-5f4debe4bde2', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-1f30-7a7d-ab17-b11ccc957cef', 'administrator'),
  ('019d13bc-1fd4-7f22-b69f-c357268048ed', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-1f30-7a7d-ab17-b11ccc957cef', 'authenticated'),
  ('019d13bc-1fe3-71fd-834b-15de09317b7a', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-1f30-7a7d-ab17-b11ccc957cef', 'anonymous'),
  ('019d13bc-2040-7009-a51a-78ce26449c18', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-2033-7790-b395-83816a348724', 'administrator'),
  ('019d13bc-204d-7f45-81d4-d9ea5a285134', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-2033-7790-b395-83816a348724', 'authenticated'),
  ('019d13bc-205c-7b37-9a65-f73ee977992d', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-2033-7790-b395-83816a348724', 'anonymous'),
  ('019d13bc-20b8-7376-9716-500f7147fc45', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-20ab-7e5b-9560-cae8e715fc7e', 'administrator'),
  ('019d13bc-20c6-70a0-bcaf-4d7b5cc856b8', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-20ab-7e5b-9560-cae8e715fc7e', 'authenticated'),
  ('019d13bc-20d4-73a1-8bc4-b9143ec4fb4c', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-20ab-7e5b-9560-cae8e715fc7e', 'anonymous'),
  ('019d13bc-213a-784d-a607-5483d3355ca7', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-212d-7f3b-8919-9567227a7198', 'administrator'),
  ('019d13bc-214b-7476-9e9e-5666cb5ba631', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-212d-7f3b-8919-9567227a7198', 'authenticated'),
  ('019d13bc-215c-70be-bb90-8a626135a59d', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-212d-7f3b-8919-9567227a7198', 'anonymous'),
  ('019d13bc-2492-73c2-9d9d-f5ea23de62a0', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-2487-7b34-8538-87ad5885ba2a', 'administrator'),
  ('019d13bc-24a1-767d-8649-6af4cc06f2dc', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-2487-7b34-8538-87ad5885ba2a', 'authenticated'),
  ('019d13bc-24b0-7254-806e-2576344b88ab', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-2487-7b34-8538-87ad5885ba2a', 'anonymous'),
  ('019d13bc-266a-7843-a36c-660b262bd939', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-265f-7e44-9f4c-5610f3e82a7b', 'administrator'),
  ('019d13bc-267a-7831-9a34-0c3db9a84cb1', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-265f-7e44-9f4c-5610f3e82a7b', 'authenticated'),
  ('019d13bc-268a-7000-ae18-a25bbbfe6d47', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-265f-7e44-9f4c-5610f3e82a7b', 'anonymous'),
  ('019d13bc-26e9-7617-8748-8dadfa159265', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-26dc-750f-9b02-e48a2bd36928', 'administrator'),
  ('019d13bc-26f7-7cd7-a2f4-9d08175fe54e', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-26dc-750f-9b02-e48a2bd36928', 'authenticated'),
  ('019d13bc-2707-7145-803e-aa0bca0a7bff', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-26dc-750f-9b02-e48a2bd36928', 'anonymous'),
  ('019d13bc-29f6-7d5d-abca-b32be7d8eaff', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-29eb-77ca-9217-6d537277d807', 'administrator'),
  ('019d13bc-2a06-7513-8fcf-16304470f0e4', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-29eb-77ca-9217-6d537277d807', 'authenticated'),
  ('019d13bc-2a16-75b5-9702-de174bfe34b5', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-29eb-77ca-9217-6d537277d807', 'anonymous'),
  ('019d13bc-2a79-7789-9122-ece25b7b3fcd', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-2a6b-7b46-aaa5-8e38d4843dd7', 'administrator'),
  ('019d13bc-2a88-7363-b49e-4c3acf5b4a1a', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-2a6b-7b46-aaa5-8e38d4843dd7', 'authenticated'),
  ('019d13bc-2a98-7251-868c-66b94f517514', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-2a6b-7b46-aaa5-8e38d4843dd7', 'anonymous'),
  ('019d13bc-2d6e-7e91-ae8f-c084ead9dd0f', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-2d61-7958-8065-7db3e62795fc', 'administrator'),
  ('019d13bc-2d80-7c3f-958b-486583719d94', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-2d61-7958-8065-7db3e62795fc', 'authenticated'),
  ('019d13bc-2d91-7700-b28a-0c3208b81093', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-2d61-7958-8065-7db3e62795fc', 'anonymous'),
  ('019d13bc-3c02-7e83-aad5-4ae225e3801d', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-3bf6-7272-af86-35c25e711f31', 'administrator'),
  ('019d13bc-3c14-704c-bb06-c818602b5d76', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-3bf6-7272-af86-35c25e711f31', 'authenticated'),
  ('019d13bc-3c24-7e5f-9346-7aed43af9844', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-3bf6-7272-af86-35c25e711f31', 'anonymous'),
  ('019d13bc-3c95-7f30-8676-8b59f6780e1b', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-3c85-7ddd-95c9-cf478bf92338', 'administrator'),
  ('019d13bc-3ca6-742e-85c1-27ead0ef84c2', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-3c85-7ddd-95c9-cf478bf92338', 'authenticated'),
  ('019d13bc-3cb7-749d-be3c-2c4236cf6845', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-3c85-7ddd-95c9-cf478bf92338', 'anonymous'),
  ('019d13bc-4596-76f8-88fa-00db513f9a70', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-4588-73c9-8ad3-4567ea4e0725', 'administrator'),
  ('019d13bc-45a7-7d28-8b3a-a88627954f83', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-4588-73c9-8ad3-4567ea4e0725', 'authenticated'),
  ('019d13bc-45b8-7a0a-8d90-34000cacc37d', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-4588-73c9-8ad3-4567ea4e0725', 'anonymous'),
  ('019d13bc-4628-7a43-9283-04154739f715', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-4619-7116-a267-51754435dc9d', 'administrator'),
  ('019d13bc-463c-7ce3-b54c-9a69be92a33d', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-4619-7116-a267-51754435dc9d', 'authenticated'),
  ('019d13bc-464d-7ea3-9f8b-84e35d385319', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-4619-7116-a267-51754435dc9d', 'anonymous'),
  ('019d13bc-9cb2-7959-bac0-e6cc7ea9a010', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-9ca0-7e1f-a096-fbdf33e39554', 'administrator'),
  ('019d13bc-9cc6-7d0c-aa27-7bcda375efdf', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-9ca0-7e1f-a096-fbdf33e39554', 'authenticated'),
  ('019d13bc-9cdc-7ddc-8532-2b358d0e737e', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-9ca0-7e1f-a096-fbdf33e39554', 'anonymous'),
  ('019d13bc-9fd8-7161-abcd-9e38cc9caf31', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-9fc4-7b2c-8762-40424411642e', 'administrator'),
  ('019d13bc-9fee-795e-a3c6-72d36f32ca57', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-9fc4-7b2c-8762-40424411642e', 'authenticated'),
  ('019d13bc-a003-7884-93ed-b06cb93db66c', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-9fc4-7b2c-8762-40424411642e', 'anonymous'),
  ('019d13bc-ae54-7826-8212-4c6dd8354f4d', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-ae42-7b48-9fda-d387dff86746', 'administrator'),
  ('019d13bc-ae69-7a85-b3cf-4730ff55bc92', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-ae42-7b48-9fda-d387dff86746', 'authenticated'),
  ('019d13bc-ae80-76a6-a01c-92ebeba07ad0', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-ae42-7b48-9fda-d387dff86746', 'anonymous'),
  ('019d13bc-b1ea-7d04-9e3f-f76c60acbe0e', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-b1d9-78ee-852f-34e586b4ea0d', 'administrator'),
  ('019d13bc-b200-7580-be62-16adaf3555c5', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-b1d9-78ee-852f-34e586b4ea0d', 'authenticated'),
  ('019d13bc-b215-7c4c-a0e4-5af02162dc22', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-b1d9-78ee-852f-34e586b4ea0d', 'anonymous'),
  ('019d13bc-b344-7ccd-b52b-c61ecd21eda1', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-b32e-795b-88ad-05e3d9e027f2', 'administrator'),
  ('019d13bc-b35b-77cc-954e-45eeec9db72b', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-b32e-795b-88ad-05e3d9e027f2', 'authenticated'),
  ('019d13bc-b370-7361-a462-347ab1a04bc0', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-b32e-795b-88ad-05e3d9e027f2', 'anonymous'),
  ('019d13bc-b40a-762d-bbb3-12991afdab56', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-b3f5-7927-836b-995e505c2d9a', 'administrator'),
  ('019d13bc-b41e-7795-9fd3-23e787c683da', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-b3f5-7927-836b-995e505c2d9a', 'authenticated'),
  ('019d13bc-b434-7b7b-b36b-55d5373d5416', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-b3f5-7927-836b-995e505c2d9a', 'anonymous'),
  ('019d13bc-c0e8-7e61-9967-261621cdb50f', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-c0d5-7daa-abf9-70ea7fc7de63', 'administrator'),
  ('019d13bc-c100-72d9-b428-197b1d38ef89', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-c0d5-7daa-abf9-70ea7fc7de63', 'authenticated'),
  ('019d13bc-c117-7ad6-af4f-df2de5409e44', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-c0d5-7daa-abf9-70ea7fc7de63', 'anonymous'),
  ('019d13bc-c1be-786e-97d8-ad559f1cb407', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-c1a9-7009-83fe-379a7340eb07', 'administrator'),
  ('019d13bc-c1d3-7731-98e8-e35f6ca0caf6', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-c1a9-7009-83fe-379a7340eb07', 'authenticated'),
  ('019d13bc-c1ea-7976-9a85-71f07d1cc4d0', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-c1a9-7009-83fe-379a7340eb07', 'anonymous'),
  ('019d13bc-d553-718d-94e0-e053a0589eed', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-d53f-73b6-abbb-c3a3912a4d08', 'administrator'),
  ('019d13bc-d568-7fe7-a5ad-d5db39719c0c', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-d53f-73b6-abbb-c3a3912a4d08', 'authenticated'),
  ('019d13bc-d57f-78a3-8803-1744a8c06737', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-d53f-73b6-abbb-c3a3912a4d08', 'anonymous');


SET session_replication_role TO DEFAULT;


