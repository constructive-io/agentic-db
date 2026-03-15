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
  ('a0089db1-91a1-4a70-cf87-505c86804f14', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a00816fb-bca4-4e67-6e1f-3b1e1a106bbe', 'administrator'),
  ('a00873f2-d5d0-42b2-423f-0adde152ebcc', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a00816fb-bca4-4e67-6e1f-3b1e1a106bbe', 'authenticated'),
  ('a008bd4e-e0dd-4c0e-18ea-8b55890866b7', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a00816fb-bca4-4e67-6e1f-3b1e1a106bbe', 'anonymous'),
  ('a0081b90-f7d9-49fa-effb-161ff979f9a1', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a00854f5-4b8d-41a6-088b-8520011b17b4', 'administrator'),
  ('a00853c4-573e-48d6-01f4-5589e39a8a1c', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a00854f5-4b8d-41a6-088b-8520011b17b4', 'authenticated'),
  ('a008b2cb-4e14-4fde-bc6b-69edeb6a4c9a', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a00854f5-4b8d-41a6-088b-8520011b17b4', 'anonymous'),
  ('a008d29b-6407-4ac5-559f-c1e08ae6c06f', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008a53d-0b70-48d6-5e13-1682a4fd4f75', 'administrator'),
  ('a008379b-06ba-4f33-ac62-f51d24dcc2e7', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008a53d-0b70-48d6-5e13-1682a4fd4f75', 'authenticated'),
  ('a008f54d-88b1-4caa-c7cb-41e87608af60', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008a53d-0b70-48d6-5e13-1682a4fd4f75', 'anonymous'),
  ('a00896f2-318f-4641-e6e5-22b8cb272437', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008738f-1b63-4dd7-1d8e-73e90046a53a', 'administrator'),
  ('a0083804-22cd-4f3a-c5d9-bdb928a9e5c8', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008738f-1b63-4dd7-1d8e-73e90046a53a', 'authenticated'),
  ('a0085a4a-c767-44ef-97c9-bdb5f39083c5', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008738f-1b63-4dd7-1d8e-73e90046a53a', 'anonymous'),
  ('a008a548-1ef5-4a8d-31ed-39e3f8fece21', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008cadd-c4c5-4c88-4033-6c9fd5982ee3', 'administrator'),
  ('a008cce8-e002-41ad-0fca-8fdd3d576a2c', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008cadd-c4c5-4c88-4033-6c9fd5982ee3', 'authenticated'),
  ('a0089532-9802-4329-fc01-f7dc931aa748', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008cadd-c4c5-4c88-4033-6c9fd5982ee3', 'anonymous'),
  ('a00841d4-0781-46e5-0b0f-ffec1ec45727', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0087970-3d1f-473c-4c81-937a8d8eeb0c', 'administrator'),
  ('a0088aa6-a99a-4a07-5dc3-d1bedf59eedf', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0087970-3d1f-473c-4c81-937a8d8eeb0c', 'authenticated'),
  ('a008f792-9424-413c-a208-d25e0287de34', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0087970-3d1f-473c-4c81-937a8d8eeb0c', 'anonymous'),
  ('a008c513-c9ab-4459-4eff-bd9a53e3066c', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008c1a4-1633-460e-0e29-b4a5f9612958', 'administrator'),
  ('a0082ff8-10a1-4da8-8a4c-d564d62f1c3f', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008c1a4-1633-460e-0e29-b4a5f9612958', 'authenticated'),
  ('a008215f-9a97-4770-7bfa-0ed771e5236d', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008c1a4-1633-460e-0e29-b4a5f9612958', 'anonymous'),
  ('a0084bcd-1bb6-4586-63d2-28d7004007e4', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008a5aa-ce13-493e-c9a8-a75193a14795', 'administrator'),
  ('a008cb53-d2a8-4b61-aa53-951785402810', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008a5aa-ce13-493e-c9a8-a75193a14795', 'authenticated'),
  ('a008c754-f48f-4246-57de-297c7c537916', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008a5aa-ce13-493e-c9a8-a75193a14795', 'anonymous'),
  ('a008f793-720d-4153-abb5-3abf3f27a749', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a00833b1-9fd1-4dfc-9b9c-13d14a04fc38', 'administrator'),
  ('a0087234-c8ed-4a91-bbd9-51e676e733fb', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a00833b1-9fd1-4dfc-9b9c-13d14a04fc38', 'authenticated'),
  ('a008e1be-d2e0-4481-d6fa-88f4dcd796bf', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a00833b1-9fd1-4dfc-9b9c-13d14a04fc38', 'anonymous'),
  ('a0083823-b121-4c0f-9aa4-430b840aa64d', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0088e12-b10a-4ebd-fac0-60096f51bd8c', 'administrator'),
  ('a0084886-ad87-40f6-42a3-f2ccdaa4454c', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0088e12-b10a-4ebd-fac0-60096f51bd8c', 'authenticated'),
  ('a008d97a-3e04-4a5b-1015-f47ea7baeba3', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0088e12-b10a-4ebd-fac0-60096f51bd8c', 'anonymous'),
  ('a0080d1a-b708-4b14-43f9-6540d5e43eb8', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008cef5-a8b2-4e8e-a661-699d408148cc', 'administrator'),
  ('a0080cee-b4af-44e5-8cc2-1b93941d1836', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008cef5-a8b2-4e8e-a661-699d408148cc', 'authenticated'),
  ('a00898fb-df37-4d60-2538-f72bbe7f420f', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008cef5-a8b2-4e8e-a661-699d408148cc', 'anonymous'),
  ('a008a9a8-14b5-47f9-4992-2156efc07640', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008be4f-09fb-47fd-01fa-c08da866a712', 'administrator'),
  ('a008ea32-7744-47aa-0460-a21dd4d4527f', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008be4f-09fb-47fd-01fa-c08da866a712', 'authenticated'),
  ('a0089c88-c1fb-49d8-6f75-a38fa7a737b8', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008be4f-09fb-47fd-01fa-c08da866a712', 'anonymous'),
  ('a0085ce7-4bd1-479b-3ebd-873cd4bc6502', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008173a-a0a7-4f93-3657-ce27c46f7964', 'administrator'),
  ('a008bb8d-9adf-4845-308b-99953fe80677', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008173a-a0a7-4f93-3657-ce27c46f7964', 'authenticated'),
  ('a008c7e3-f499-432c-debf-cccc74730fe3', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008173a-a0a7-4f93-3657-ce27c46f7964', 'anonymous'),
  ('a008631f-8e4c-44c8-e934-1086a6b6143b', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0082352-e9aa-438c-33bf-bf8133b18d61', 'administrator'),
  ('a0087339-f042-4118-4fa2-9dbebf395f4d', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0082352-e9aa-438c-33bf-bf8133b18d61', 'authenticated'),
  ('a008d103-ae5a-4a34-9d81-26088fd17cc2', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0082352-e9aa-438c-33bf-bf8133b18d61', 'anonymous'),
  ('a0089a93-d244-4ac8-34f0-01bc8fbb6ed2', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008e060-acc4-4224-2479-4b6c9d15367a', 'administrator'),
  ('a0087d72-4831-47c1-2dd9-d4e1f2ed775d', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008e060-acc4-4224-2479-4b6c9d15367a', 'authenticated'),
  ('a008fce5-9421-4650-14b8-ebdb42eaeb52', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008e060-acc4-4224-2479-4b6c9d15367a', 'anonymous'),
  ('a0081e66-1118-435e-36db-472e0e0679d8', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008afdd-6d77-4ced-08f3-925ea97c8df2', 'administrator'),
  ('a0085dee-ec15-49e5-de80-6e62b1ab3213', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008afdd-6d77-4ced-08f3-925ea97c8df2', 'authenticated'),
  ('a008f45f-0c15-45bf-ee44-f54026795db0', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008afdd-6d77-4ced-08f3-925ea97c8df2', 'anonymous'),
  ('a008cbad-863f-42a1-2c33-787712b0d392', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0081108-0bf8-4a86-9a05-a0669b2c1d4b', 'administrator'),
  ('a00854b1-90bd-4070-c544-47e3e2aa0125', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0081108-0bf8-4a86-9a05-a0669b2c1d4b', 'authenticated'),
  ('a00862f5-833d-47e0-2557-f15b403f7cfa', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0081108-0bf8-4a86-9a05-a0669b2c1d4b', 'anonymous'),
  ('a008511f-9298-49b6-3c31-74696b1fbacb', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008da9c-2867-43e7-2755-5949d3ceffd4', 'administrator'),
  ('a008ecd5-fd48-4a71-10ba-f83b4f5dce48', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008da9c-2867-43e7-2755-5949d3ceffd4', 'authenticated'),
  ('a008a5fb-29ab-4a5b-2e7d-458c52046013', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008da9c-2867-43e7-2755-5949d3ceffd4', 'anonymous'),
  ('a0086795-74f2-4161-ad1e-b9dde25485f8', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0081397-cee5-40ce-2fe9-6495cc0516a4', 'administrator'),
  ('a0082b3b-2413-43b2-30f2-0400cca5a612', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0081397-cee5-40ce-2fe9-6495cc0516a4', 'authenticated'),
  ('a008ed90-0039-4f5c-cc0d-5a4757b3952c', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0081397-cee5-40ce-2fe9-6495cc0516a4', 'anonymous'),
  ('a008ebde-0237-41e4-4e6e-6fffbf9132a5', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0087c97-015d-40d8-69ee-7fe276989655', 'administrator'),
  ('a0087c60-b55c-427d-5121-6111cde7c95a', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0087c97-015d-40d8-69ee-7fe276989655', 'authenticated'),
  ('a008934d-110a-4c50-b07e-dedcbd5cbbae', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0087c97-015d-40d8-69ee-7fe276989655', 'anonymous'),
  ('a0081b25-e59a-437f-da4e-27da01f8c550', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0084057-323a-4174-3199-c0f7d710381c', 'administrator'),
  ('a0086424-0cbf-4681-c67b-388fed2632ff', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0084057-323a-4174-3199-c0f7d710381c', 'authenticated'),
  ('a008dad2-74f0-4022-9622-13268bf0ce38', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0084057-323a-4174-3199-c0f7d710381c', 'anonymous'),
  ('a00817d1-3909-4666-2b70-e1da1cf43b1c', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0084f98-8b27-43b8-3b87-48168ff156f4', 'administrator'),
  ('a0084a68-cc4e-4ae8-8f99-e42062cc12f4', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0084f98-8b27-43b8-3b87-48168ff156f4', 'authenticated'),
  ('a008f4c4-b0db-4f59-85d6-78716d18dbdb', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0084f98-8b27-43b8-3b87-48168ff156f4', 'anonymous'),
  ('a008864d-ee4d-4e8c-c941-e7c153b41bb3', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008e048-1a39-4a79-9697-cd4186f343b6', 'administrator'),
  ('a008633f-ee0d-4347-87e1-d9e73957f1e2', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008e048-1a39-4a79-9697-cd4186f343b6', 'authenticated'),
  ('a008edcf-fe95-4c61-eb9e-e61c0ed32a03', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008e048-1a39-4a79-9697-cd4186f343b6', 'anonymous'),
  ('a0083b71-5a97-4a22-d892-67f81976eed5', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0087acf-ae83-4e8b-ee41-1447ce3746f2', 'administrator'),
  ('a0086d79-fbd3-42f2-63c3-13f9e2e246e1', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0087acf-ae83-4e8b-ee41-1447ce3746f2', 'authenticated'),
  ('a008a7be-e1fe-40b7-23c5-947b4d7bc759', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0087acf-ae83-4e8b-ee41-1447ce3746f2', 'anonymous');


SET session_replication_role TO DEFAULT;


