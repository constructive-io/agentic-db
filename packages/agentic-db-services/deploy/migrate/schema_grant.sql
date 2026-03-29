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
  ('02240b11-8213-e180-68f4-c16f3f034b0e', '14b01c2d-072a-5594-645a-675751a83d86', 'e65c3452-fa68-6a07-60d7-a3f190806408', 'authenticated'),
  ('06d55f63-746e-88ba-54cc-539b1d2ce60c', '14b01c2d-072a-5594-645a-675751a83d86', '7d46d112-a70d-f618-7900-3e5c20b382bb', 'anonymous'),
  ('0dbd3ff0-84ae-a478-9082-ecb6e11861f1', '14b01c2d-072a-5594-645a-675751a83d86', '81934a51-0614-ec94-d98f-1fe3d7c22dc4', 'authenticated'),
  ('12ca03c6-37d6-719f-180d-6396c2600ef8', '14b01c2d-072a-5594-645a-675751a83d86', 'a8bc6911-3f9d-0e65-5ca6-21035222997f', 'authenticated'),
  ('172606e9-b528-ed13-79c7-24408b2513a6', '14b01c2d-072a-5594-645a-675751a83d86', '60b82ba9-4f66-84f7-aab8-5a3ee1bd6fe8', 'authenticated'),
  ('1d4309fa-975b-7b70-a8a2-315244a6e67a', '14b01c2d-072a-5594-645a-675751a83d86', '7d46d112-a70d-f618-7900-3e5c20b382bb', 'authenticated'),
  ('24c19e82-8409-0251-2e77-4b53773ad6ba', '14b01c2d-072a-5594-645a-675751a83d86', '197eaace-fe05-2038-3d3c-b14d1ab7e048', 'administrator'),
  ('26625975-35c1-39a6-4759-078fbcac475d', '14b01c2d-072a-5594-645a-675751a83d86', '5f87fd0b-3e41-7188-daad-7a12256d4ad7', 'anonymous'),
  ('279e862a-b73d-3c21-63a5-5b1f7cace15a', '14b01c2d-072a-5594-645a-675751a83d86', 'd68f05fe-53e6-7119-1356-9044a8382537', 'administrator'),
  ('307c70d0-205b-8b0e-b238-d9260b499fcb', '14b01c2d-072a-5594-645a-675751a83d86', 'd68f05fe-53e6-7119-1356-9044a8382537', 'anonymous'),
  ('3728590b-fdb8-bed6-173c-4df957579d6f', '14b01c2d-072a-5594-645a-675751a83d86', 'e65c3452-fa68-6a07-60d7-a3f190806408', 'administrator'),
  ('37e07003-cbfc-9b51-3d92-96ebf56747c5', '14b01c2d-072a-5594-645a-675751a83d86', '946258fc-eb29-ce55-7946-86e554402d12', 'anonymous'),
  ('3a512eba-33ce-d6b3-68fc-7c4625b30480', '14b01c2d-072a-5594-645a-675751a83d86', '34fb2c11-bc37-0c63-a3ed-1949ae860cd7', 'anonymous'),
  ('3a690896-a0bc-4a63-530c-be6b11e1ac1f', '14b01c2d-072a-5594-645a-675751a83d86', 'aa478a49-d1c3-5f21-fcba-0f8994af16a7', 'authenticated'),
  ('418d9b6e-c2a2-aede-ea3f-9656a414041a', '14b01c2d-072a-5594-645a-675751a83d86', '89288808-b68c-6635-f0ae-55f5a1d29c85', 'authenticated'),
  ('425d1f44-4633-29e2-3ead-e41afe4c63cb', '14b01c2d-072a-5594-645a-675751a83d86', '60b82ba9-4f66-84f7-aab8-5a3ee1bd6fe8', 'anonymous'),
  ('4cfd500e-f101-f436-cfcb-3744c2967e53', '14b01c2d-072a-5594-645a-675751a83d86', '73486766-2491-e7d3-2837-0af7a0aa0dc1', 'administrator'),
  ('4f7d024f-19d5-4e78-a19f-8280f2f3f4bd', '14b01c2d-072a-5594-645a-675751a83d86', '386e074d-5dd4-7d6e-7ecd-3611254961c5', 'anonymous'),
  ('5485bcc4-9f13-8368-7f9d-2a41ddff6863', '14b01c2d-072a-5594-645a-675751a83d86', '598a2f9e-3116-b19b-4703-d5a31d0b22df', 'administrator'),
  ('577ef65c-8a13-6143-3a99-a99040b95d92', '14b01c2d-072a-5594-645a-675751a83d86', 'bb95df7b-2908-00d7-b800-b1e9c67965d5', 'administrator'),
  ('59d6a59e-233e-ea78-ac30-8a6db18295f3', '14b01c2d-072a-5594-645a-675751a83d86', 'bb95df7b-2908-00d7-b800-b1e9c67965d5', 'anonymous'),
  ('5a2c8990-160b-b869-d4dc-b58fd9af90ef', '14b01c2d-072a-5594-645a-675751a83d86', '81934a51-0614-ec94-d98f-1fe3d7c22dc4', 'administrator'),
  ('5dfe0d2d-a203-2e38-22dc-59e34cf1b63d', '14b01c2d-072a-5594-645a-675751a83d86', 'aa478a49-d1c3-5f21-fcba-0f8994af16a7', 'administrator'),
  ('5e9a62fd-c3dd-b4b6-f414-5577aee25f66', '14b01c2d-072a-5594-645a-675751a83d86', '197eaace-fe05-2038-3d3c-b14d1ab7e048', 'anonymous'),
  ('5fcd37e3-1072-6800-5c59-9df2f18adf5c', '14b01c2d-072a-5594-645a-675751a83d86', '386e074d-5dd4-7d6e-7ecd-3611254961c5', 'administrator'),
  ('6392e0ea-11a2-e93a-8bf3-49b29f1f66f8', '14b01c2d-072a-5594-645a-675751a83d86', 'e9eee499-5b77-f62d-9b9e-1291de0c0b89', 'administrator'),
  ('655cb610-b566-00f3-6817-47a79922206b', '14b01c2d-072a-5594-645a-675751a83d86', '8ab38567-f44a-918e-1913-05b2e0f3918f', 'administrator'),
  ('66efb4b9-a1dd-862a-44cc-3981cd0fdb0a', '14b01c2d-072a-5594-645a-675751a83d86', 'e77968b2-9aff-6a76-b82f-12052120fbdf', 'authenticated'),
  ('67accc57-94cc-9396-bf91-3689992ce816', '14b01c2d-072a-5594-645a-675751a83d86', 'ad44e072-783e-1315-4950-4c52779e8bd0', 'anonymous'),
  ('6c64240f-a987-5d43-34cf-2a2ef0239511', '14b01c2d-072a-5594-645a-675751a83d86', '34fb2c11-bc37-0c63-a3ed-1949ae860cd7', 'administrator'),
  ('6cad0944-7b3d-4e1b-2cd6-43c6dc2ea255', '14b01c2d-072a-5594-645a-675751a83d86', '73486766-2491-e7d3-2837-0af7a0aa0dc1', 'authenticated'),
  ('6e05d518-500f-afe0-c191-98ec82ae6486', '14b01c2d-072a-5594-645a-675751a83d86', 'cbc61d43-ac18-5796-2c32-90c8f324b121', 'authenticated'),
  ('76e9c620-6b55-afbf-110f-e736cead2537', '14b01c2d-072a-5594-645a-675751a83d86', '60b82ba9-4f66-84f7-aab8-5a3ee1bd6fe8', 'administrator'),
  ('7ae1ee2c-17b3-8904-7dfc-294abf20cda8', '14b01c2d-072a-5594-645a-675751a83d86', '34fb2c11-bc37-0c63-a3ed-1949ae860cd7', 'authenticated'),
  ('7f4ac42b-1f4a-8770-2d5b-5f6187d824c1', '14b01c2d-072a-5594-645a-675751a83d86', '2ed38f5a-a2c7-7f90-732f-a63173cc47e1', 'administrator'),
  ('80491cba-d25f-55be-676e-d478af4717e8', '14b01c2d-072a-5594-645a-675751a83d86', 'a8bc6911-3f9d-0e65-5ca6-21035222997f', 'administrator'),
  ('86d87185-72c1-5f1c-a8c4-f22b55b8c2d6', '14b01c2d-072a-5594-645a-675751a83d86', '386e074d-5dd4-7d6e-7ecd-3611254961c5', 'authenticated'),
  ('8d23e7d3-b922-d288-6d7e-51a1a497bdcb', '14b01c2d-072a-5594-645a-675751a83d86', '5f87fd0b-3e41-7188-daad-7a12256d4ad7', 'administrator'),
  ('8fe0b7da-096f-d70e-dfb6-141d8b100d74', '14b01c2d-072a-5594-645a-675751a83d86', '2ed38f5a-a2c7-7f90-732f-a63173cc47e1', 'anonymous'),
  ('91709f7d-5ee5-39be-4669-f42db1dddc87', '14b01c2d-072a-5594-645a-675751a83d86', 'e9eee499-5b77-f62d-9b9e-1291de0c0b89', 'authenticated'),
  ('99aba970-3837-778a-bc3b-91a7e0773110', '14b01c2d-072a-5594-645a-675751a83d86', 'bb95df7b-2908-00d7-b800-b1e9c67965d5', 'authenticated'),
  ('99af1cee-8084-e691-908c-3929a1a861ae', '14b01c2d-072a-5594-645a-675751a83d86', '73486766-2491-e7d3-2837-0af7a0aa0dc1', 'anonymous'),
  ('9de82aad-3317-a18d-f833-0eae1a7c9df1', '14b01c2d-072a-5594-645a-675751a83d86', '402d4be8-210c-4a45-d7bb-2c14a959dacf', 'authenticated'),
  ('9f4bedcf-b441-0b35-fcd8-ac9430451e4f', '14b01c2d-072a-5594-645a-675751a83d86', '402d4be8-210c-4a45-d7bb-2c14a959dacf', 'administrator'),
  ('9faf108e-470f-8f99-0a83-a539c67e693a', '14b01c2d-072a-5594-645a-675751a83d86', 'd68f05fe-53e6-7119-1356-9044a8382537', 'authenticated'),
  ('a3760520-5b33-9a2e-a984-bb9d19996966', '14b01c2d-072a-5594-645a-675751a83d86', 'e77968b2-9aff-6a76-b82f-12052120fbdf', 'anonymous'),
  ('aaa3fa53-6166-16df-5676-e9cde4cb5a66', '14b01c2d-072a-5594-645a-675751a83d86', '8ab38567-f44a-918e-1913-05b2e0f3918f', 'anonymous'),
  ('ad4a6394-7c18-5686-f5d1-a48b07518bad', '14b01c2d-072a-5594-645a-675751a83d86', '7d46d112-a70d-f618-7900-3e5c20b382bb', 'administrator'),
  ('ae7e6f58-3a22-4d26-dc9d-4ef044656d4b', '14b01c2d-072a-5594-645a-675751a83d86', '598a2f9e-3116-b19b-4703-d5a31d0b22df', 'anonymous'),
  ('b2067602-0bcd-e4b6-f623-c8bc16a8c6ed', '14b01c2d-072a-5594-645a-675751a83d86', '946258fc-eb29-ce55-7946-86e554402d12', 'authenticated'),
  ('ba1f4c87-9703-04c5-5cfb-bfbff285b4bb', '14b01c2d-072a-5594-645a-675751a83d86', 'cbc61d43-ac18-5796-2c32-90c8f324b121', 'anonymous'),
  ('ba562e4d-eb2d-f2e6-1d57-fc4e833c66ab', '14b01c2d-072a-5594-645a-675751a83d86', '402d4be8-210c-4a45-d7bb-2c14a959dacf', 'anonymous'),
  ('bcba28ab-4abf-e551-ad41-d5aa2e712629', '14b01c2d-072a-5594-645a-675751a83d86', 'ad44e072-783e-1315-4950-4c52779e8bd0', 'authenticated'),
  ('c07f2f25-34a1-539e-5311-0d508cc24c6e', '14b01c2d-072a-5594-645a-675751a83d86', 'aa478a49-d1c3-5f21-fcba-0f8994af16a7', 'anonymous'),
  ('cc466efd-384d-f9bc-5bfd-a65781c87dfe', '14b01c2d-072a-5594-645a-675751a83d86', 'e9eee499-5b77-f62d-9b9e-1291de0c0b89', 'anonymous'),
  ('ce4708f5-8115-edb5-0ce8-8868ae6df851', '14b01c2d-072a-5594-645a-675751a83d86', 'a841229c-1e8a-8118-8b1a-589d543b924c', 'administrator'),
  ('d340605d-ad92-e7f9-511c-f601fbebbc99', '14b01c2d-072a-5594-645a-675751a83d86', 'a841229c-1e8a-8118-8b1a-589d543b924c', 'anonymous'),
  ('d5a81bcc-844d-258f-c54c-760471a46aca', '14b01c2d-072a-5594-645a-675751a83d86', 'e65c3452-fa68-6a07-60d7-a3f190806408', 'anonymous'),
  ('d6ebbf84-3387-3339-89fa-05ac46126dbc', '14b01c2d-072a-5594-645a-675751a83d86', 'cbc61d43-ac18-5796-2c32-90c8f324b121', 'administrator'),
  ('d87b76f1-3d84-67d1-7155-a0dc17eec420', '14b01c2d-072a-5594-645a-675751a83d86', '197eaace-fe05-2038-3d3c-b14d1ab7e048', 'authenticated'),
  ('defe791e-3524-2c61-6c9e-fb1a663e6921', '14b01c2d-072a-5594-645a-675751a83d86', '598a2f9e-3116-b19b-4703-d5a31d0b22df', 'authenticated'),
  ('e0a7cad3-55cd-2618-b920-06347df9ed38', '14b01c2d-072a-5594-645a-675751a83d86', '8ab38567-f44a-918e-1913-05b2e0f3918f', 'authenticated'),
  ('e0cf77ba-8417-4fa8-4fc1-eb4580c6bba5', '14b01c2d-072a-5594-645a-675751a83d86', '5f87fd0b-3e41-7188-daad-7a12256d4ad7', 'authenticated'),
  ('e4c33efe-b4b7-5339-7204-cf5aa94d34a4', '14b01c2d-072a-5594-645a-675751a83d86', '89288808-b68c-6635-f0ae-55f5a1d29c85', 'administrator'),
  ('e6a80266-d598-9554-31eb-2ae947f894a7', '14b01c2d-072a-5594-645a-675751a83d86', '81934a51-0614-ec94-d98f-1fe3d7c22dc4', 'anonymous'),
  ('e76f8b98-8460-3abd-dbd8-c6fcaf07d9c2', '14b01c2d-072a-5594-645a-675751a83d86', 'e77968b2-9aff-6a76-b82f-12052120fbdf', 'administrator'),
  ('ef2e31cd-66aa-536d-c2c0-8769ed697f48', '14b01c2d-072a-5594-645a-675751a83d86', '2ed38f5a-a2c7-7f90-732f-a63173cc47e1', 'authenticated'),
  ('f1a308e1-fed0-488c-1bbc-375f7fd4561c', '14b01c2d-072a-5594-645a-675751a83d86', 'a841229c-1e8a-8118-8b1a-589d543b924c', 'authenticated'),
  ('f3d9c52c-26cd-efb7-832f-426b48f9244b', '14b01c2d-072a-5594-645a-675751a83d86', '89288808-b68c-6635-f0ae-55f5a1d29c85', 'anonymous'),
  ('f4d9fa20-94ea-df49-9022-7afe5ffaded4', '14b01c2d-072a-5594-645a-675751a83d86', 'ad44e072-783e-1315-4950-4c52779e8bd0', 'administrator'),
  ('f6afaa34-0dcc-d0ed-988a-41e2d214b329', '14b01c2d-072a-5594-645a-675751a83d86', 'a8bc6911-3f9d-0e65-5ca6-21035222997f', 'anonymous'),
  ('fb14087f-75b3-afec-d964-9dbcc3d552a1', '14b01c2d-072a-5594-645a-675751a83d86', '946258fc-eb29-ce55-7946-86e554402d12', 'administrator');


SET session_replication_role TO DEFAULT;


