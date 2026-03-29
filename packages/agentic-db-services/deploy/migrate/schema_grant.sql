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
  ('0127b253-42b5-ae69-3e7a-5b8251bae936', '2ef50f93-192b-b168-969d-304c8e675e1d', '9fbcb405-0a09-1cd9-b7e3-11249644e2c7', 'authenticated'),
  ('03b2b3b4-4da6-5060-7771-ce2f880d2121', '2ef50f93-192b-b168-969d-304c8e675e1d', 'dde9d580-bec9-b524-f62a-4cf00d07e04c', 'anonymous'),
  ('0a6ab6cf-dba4-f7c0-5f18-fa69e4ffe38d', '2ef50f93-192b-b168-969d-304c8e675e1d', '4e508e09-6aa9-6239-ded2-01f8853a87cf', 'administrator'),
  ('0acabf06-879c-cead-bc0a-72bb34e4d747', '2ef50f93-192b-b168-969d-304c8e675e1d', 'ccbc0a07-ae90-c183-db56-fd41f35affbe', 'anonymous'),
  ('12505534-fa4f-5eda-b14a-80d382008bdd', '2ef50f93-192b-b168-969d-304c8e675e1d', '4b4d3a75-1494-5d8e-33ac-b6aeea6cddb7', 'administrator'),
  ('14cba2c1-a11e-919b-1a87-6c2491d619c3', '2ef50f93-192b-b168-969d-304c8e675e1d', '7227dbe2-7cb2-59b2-d468-6d25df342903', 'anonymous'),
  ('151738c9-2ddd-8ea6-0dfe-18b25614f63d', '2ef50f93-192b-b168-969d-304c8e675e1d', '8f861828-6a40-84ed-57b2-b046272d8ea8', 'anonymous'),
  ('17134e02-8863-299e-5896-fd563b75efe3', '2ef50f93-192b-b168-969d-304c8e675e1d', '97c6ad23-c014-16d0-8f3d-8d0be14065fe', 'administrator'),
  ('1cbb152e-2771-32ca-5ba6-da6fc8f9e2c4', '2ef50f93-192b-b168-969d-304c8e675e1d', 'ec5002a7-7d8e-f720-3a79-ac6edd4aee30', 'authenticated'),
  ('220ec1eb-16fd-f988-e808-5b236bcd3fd6', '2ef50f93-192b-b168-969d-304c8e675e1d', '7367e953-0d70-83a4-a154-cab03c10944e', 'administrator'),
  ('28adef4d-a354-4942-2a8d-f8d81f3f4b55', '2ef50f93-192b-b168-969d-304c8e675e1d', '97c6ad23-c014-16d0-8f3d-8d0be14065fe', 'anonymous'),
  ('29c48f5d-f40f-92f8-fd8b-4ba091b7f748', '2ef50f93-192b-b168-969d-304c8e675e1d', '2a7b615d-ddb5-8955-0458-298a538f5b11', 'anonymous'),
  ('3dc0d746-34ac-2113-4955-eb139cccab65', '2ef50f93-192b-b168-969d-304c8e675e1d', '6fac8c0d-a376-0520-b5a9-4002080cbea9', 'authenticated'),
  ('3ed25686-73a9-d724-b1c5-5cd2b0047aeb', '2ef50f93-192b-b168-969d-304c8e675e1d', '2a7b615d-ddb5-8955-0458-298a538f5b11', 'administrator'),
  ('541ccbf6-82c8-f74d-64b5-f0fc4bc6d65c', '2ef50f93-192b-b168-969d-304c8e675e1d', '6fac8c0d-a376-0520-b5a9-4002080cbea9', 'administrator'),
  ('57ccd75f-2564-8c94-cc4a-9c2729817610', '2ef50f93-192b-b168-969d-304c8e675e1d', '7227dbe2-7cb2-59b2-d468-6d25df342903', 'authenticated'),
  ('5a655fc0-5dbd-ce64-21b0-2ccf367e54d6', '2ef50f93-192b-b168-969d-304c8e675e1d', 'b6d1ba78-d1b4-511d-1a9b-98722c2fbf51', 'administrator'),
  ('5fc700af-2e79-42bc-0c1b-01b8c9376c37', '2ef50f93-192b-b168-969d-304c8e675e1d', '7a55d5c1-c868-32c1-dfa9-57bcaeb18b16', 'administrator'),
  ('60673a54-03c0-0851-1c4b-254fd812fade', '2ef50f93-192b-b168-969d-304c8e675e1d', '500b149d-0190-022d-d22a-c7d1190ada62', 'anonymous'),
  ('62ba2334-c81b-67d4-37f1-dac873de9229', '2ef50f93-192b-b168-969d-304c8e675e1d', 'ccbc0a07-ae90-c183-db56-fd41f35affbe', 'administrator'),
  ('708bd74f-3ae5-583b-5862-bb8f67312e0a', '2ef50f93-192b-b168-969d-304c8e675e1d', '4b4d3a75-1494-5d8e-33ac-b6aeea6cddb7', 'anonymous'),
  ('72bf6fe4-c0cb-bad1-5894-a7fb80525fd5', '2ef50f93-192b-b168-969d-304c8e675e1d', 'd17fa32f-9906-df6a-43d7-290faf7c818a', 'authenticated'),
  ('754f06b5-179d-1a9f-8ab2-09122a7a6456', '2ef50f93-192b-b168-969d-304c8e675e1d', 'cf828ea2-ada6-30d9-9f88-49600033a4a4', 'authenticated'),
  ('76118ead-a581-8286-7907-2315a4a4b52b', '2ef50f93-192b-b168-969d-304c8e675e1d', '9ccd1a15-747d-b3dc-6ed2-41691cff035e', 'anonymous'),
  ('7df40890-ccb4-b464-040e-c835ec368fd3', '2ef50f93-192b-b168-969d-304c8e675e1d', '7367e953-0d70-83a4-a154-cab03c10944e', 'authenticated'),
  ('7f455f21-75af-cb9e-819d-007eb98e2cd1', '2ef50f93-192b-b168-969d-304c8e675e1d', 'c1732592-631e-c160-2f43-7c8679504e8a', 'authenticated'),
  ('804d9eae-234e-8f1e-dd72-1a6c675d1b39', '2ef50f93-192b-b168-969d-304c8e675e1d', '98ae2e0e-b2fc-f6c8-505c-3aab7d43dfa2', 'authenticated'),
  ('80f20217-0335-b8c4-c7a4-55b01c9004d6', '2ef50f93-192b-b168-969d-304c8e675e1d', '22a37e39-a81a-1afb-f4dd-d895806b24a5', 'administrator'),
  ('8799e148-598c-5912-7514-ea1ce4308bd4', '2ef50f93-192b-b168-969d-304c8e675e1d', '4e508e09-6aa9-6239-ded2-01f8853a87cf', 'anonymous'),
  ('87f22ff5-2c6d-95f6-d353-27c2647de5d0', '2ef50f93-192b-b168-969d-304c8e675e1d', '8f861828-6a40-84ed-57b2-b046272d8ea8', 'administrator'),
  ('88c2241d-4bdf-8efa-f5aa-52b044bbd747', '2ef50f93-192b-b168-969d-304c8e675e1d', '9ccd1a15-747d-b3dc-6ed2-41691cff035e', 'authenticated'),
  ('890003a9-175a-dd06-0242-4464ea8f9192', '2ef50f93-192b-b168-969d-304c8e675e1d', '7a55d5c1-c868-32c1-dfa9-57bcaeb18b16', 'anonymous'),
  ('8be82bf6-0ace-649c-163f-657d60c0d52e', '2ef50f93-192b-b168-969d-304c8e675e1d', 'd17fa32f-9906-df6a-43d7-290faf7c818a', 'administrator'),
  ('8c066cbf-6c5b-39ba-b167-efdaa3bf228f', '2ef50f93-192b-b168-969d-304c8e675e1d', 'cf828ea2-ada6-30d9-9f88-49600033a4a4', 'anonymous'),
  ('8d39c546-0311-2a56-9b93-e844bcabc969', '2ef50f93-192b-b168-969d-304c8e675e1d', '22a37e39-a81a-1afb-f4dd-d895806b24a5', 'authenticated'),
  ('8def6043-4f42-ffbf-be90-af56e24c242c', '2ef50f93-192b-b168-969d-304c8e675e1d', 'd83cb385-4291-63f4-3ca6-34471b254f01', 'authenticated'),
  ('8fe9143f-cf6b-40fc-7645-2989d182e800', '2ef50f93-192b-b168-969d-304c8e675e1d', 'e1597e9a-af46-fd48-5605-3a10d6c3ea3d', 'anonymous'),
  ('92e3b624-6752-fffb-9c0c-fe1220f783b0', '2ef50f93-192b-b168-969d-304c8e675e1d', '98ae2e0e-b2fc-f6c8-505c-3aab7d43dfa2', 'anonymous'),
  ('943aded3-9b33-d9c1-9579-a59e72cd1974', '2ef50f93-192b-b168-969d-304c8e675e1d', '97c6ad23-c014-16d0-8f3d-8d0be14065fe', 'authenticated'),
  ('9476067b-9004-cc8c-ddd5-a6b57014117c', '2ef50f93-192b-b168-969d-304c8e675e1d', '22a37e39-a81a-1afb-f4dd-d895806b24a5', 'anonymous'),
  ('979e77ee-fb43-b6ee-a4e7-5ca767267401', '2ef50f93-192b-b168-969d-304c8e675e1d', '73a2c77f-aeee-fb24-2630-e6c96ba888fe', 'authenticated'),
  ('98bdae02-3b08-1bfb-3c54-7177a184b478', '2ef50f93-192b-b168-969d-304c8e675e1d', '7a55d5c1-c868-32c1-dfa9-57bcaeb18b16', 'authenticated'),
  ('9de6b30d-48b7-d5d9-3b5f-51b8e1ed96d1', '2ef50f93-192b-b168-969d-304c8e675e1d', 'dde9d580-bec9-b524-f62a-4cf00d07e04c', 'administrator'),
  ('a4aca3f6-b9e4-aab1-da76-e9153d7e395e', '2ef50f93-192b-b168-969d-304c8e675e1d', 'e1597e9a-af46-fd48-5605-3a10d6c3ea3d', 'administrator'),
  ('a75d2946-7e6a-1594-f645-72d8f320b30f', '2ef50f93-192b-b168-969d-304c8e675e1d', 'd83cb385-4291-63f4-3ca6-34471b254f01', 'administrator'),
  ('ac958984-3a89-5dae-0e61-e2d10fcbc055', '2ef50f93-192b-b168-969d-304c8e675e1d', '4b4d3a75-1494-5d8e-33ac-b6aeea6cddb7', 'authenticated'),
  ('aeb49a4d-ea4e-539a-731e-6b17c9497f0f', '2ef50f93-192b-b168-969d-304c8e675e1d', 'd83cb385-4291-63f4-3ca6-34471b254f01', 'anonymous'),
  ('bbb69eca-a3d6-a53e-422e-1045ec6498bf', '2ef50f93-192b-b168-969d-304c8e675e1d', 'ec5002a7-7d8e-f720-3a79-ac6edd4aee30', 'anonymous'),
  ('be6f2e2d-39ad-15ae-473e-f5ff8bdde9ff', '2ef50f93-192b-b168-969d-304c8e675e1d', '9fbcb405-0a09-1cd9-b7e3-11249644e2c7', 'administrator'),
  ('c2f0c710-3be9-521e-78db-0963f904138f', '2ef50f93-192b-b168-969d-304c8e675e1d', 'd17fa32f-9906-df6a-43d7-290faf7c818a', 'anonymous'),
  ('c4100904-cac3-e291-308d-fecd0cf83086', '2ef50f93-192b-b168-969d-304c8e675e1d', '2a7b615d-ddb5-8955-0458-298a538f5b11', 'authenticated'),
  ('c65f8296-b396-98ac-0a62-433669cf23a1', '2ef50f93-192b-b168-969d-304c8e675e1d', 'e1597e9a-af46-fd48-5605-3a10d6c3ea3d', 'authenticated'),
  ('cbc92629-2e4a-7700-37a4-f96d0fe56862', '2ef50f93-192b-b168-969d-304c8e675e1d', '7227dbe2-7cb2-59b2-d468-6d25df342903', 'administrator'),
  ('cd9cdc31-ded2-d364-ace0-e43a99cd9d13', '2ef50f93-192b-b168-969d-304c8e675e1d', 'b6d1ba78-d1b4-511d-1a9b-98722c2fbf51', 'authenticated'),
  ('ce4d498f-7831-bd74-f9d4-07180d33ac31', '2ef50f93-192b-b168-969d-304c8e675e1d', 'c1732592-631e-c160-2f43-7c8679504e8a', 'anonymous'),
  ('d42a7b9e-d4fd-292d-74c0-55fdb956153a', '2ef50f93-192b-b168-969d-304c8e675e1d', '7367e953-0d70-83a4-a154-cab03c10944e', 'anonymous'),
  ('d4557fcc-e33a-ebfc-13da-76fc74ece9f2', '2ef50f93-192b-b168-969d-304c8e675e1d', 'b6d1ba78-d1b4-511d-1a9b-98722c2fbf51', 'anonymous'),
  ('d94cabdc-31ba-b076-2bc3-49598f89cd4b', '2ef50f93-192b-b168-969d-304c8e675e1d', 'dde9d580-bec9-b524-f62a-4cf00d07e04c', 'authenticated'),
  ('dd1fd41f-8154-6a7d-780d-a8dd499a9193', '2ef50f93-192b-b168-969d-304c8e675e1d', '98ae2e0e-b2fc-f6c8-505c-3aab7d43dfa2', 'administrator'),
  ('df485995-57e9-6914-48f7-8aee1a21f261', '2ef50f93-192b-b168-969d-304c8e675e1d', '8f861828-6a40-84ed-57b2-b046272d8ea8', 'authenticated'),
  ('e0a3f68a-dc7c-045b-41ee-abc6cf91e4c3', '2ef50f93-192b-b168-969d-304c8e675e1d', '9ccd1a15-747d-b3dc-6ed2-41691cff035e', 'administrator'),
  ('e0ee5f09-f78a-ede1-a0b9-1a96818b770c', '2ef50f93-192b-b168-969d-304c8e675e1d', 'c1732592-631e-c160-2f43-7c8679504e8a', 'administrator'),
  ('e3e226e7-bc8c-5d9b-999b-a73dc95a8441', '2ef50f93-192b-b168-969d-304c8e675e1d', 'ccbc0a07-ae90-c183-db56-fd41f35affbe', 'authenticated'),
  ('e4e7eb01-1d79-f5d7-be98-614bc73c330f', '2ef50f93-192b-b168-969d-304c8e675e1d', '6fac8c0d-a376-0520-b5a9-4002080cbea9', 'anonymous'),
  ('e89de3e3-e496-1f6d-de26-9b05c955ee81', '2ef50f93-192b-b168-969d-304c8e675e1d', 'ec5002a7-7d8e-f720-3a79-ac6edd4aee30', 'administrator'),
  ('ebec1e52-6920-0bcf-1157-0ea8d7168be2', '2ef50f93-192b-b168-969d-304c8e675e1d', '9fbcb405-0a09-1cd9-b7e3-11249644e2c7', 'anonymous'),
  ('eca8629e-a40b-3f93-0ede-3d406fa920a8', '2ef50f93-192b-b168-969d-304c8e675e1d', '500b149d-0190-022d-d22a-c7d1190ada62', 'authenticated'),
  ('ee01dcd3-aa73-fc84-c7a3-3adf68f1f868', '2ef50f93-192b-b168-969d-304c8e675e1d', '73a2c77f-aeee-fb24-2630-e6c96ba888fe', 'administrator'),
  ('f09d2385-4b9b-abc9-e534-690864256b5f', '2ef50f93-192b-b168-969d-304c8e675e1d', '73a2c77f-aeee-fb24-2630-e6c96ba888fe', 'anonymous'),
  ('f5784dde-8eb0-0933-1258-fb584dc9d8f8', '2ef50f93-192b-b168-969d-304c8e675e1d', 'cf828ea2-ada6-30d9-9f88-49600033a4a4', 'administrator'),
  ('f6f2f01e-8b42-a1b2-b183-ba9702c35fb9', '2ef50f93-192b-b168-969d-304c8e675e1d', '4e508e09-6aa9-6239-ded2-01f8853a87cf', 'authenticated'),
  ('f89a66db-321c-8401-48b8-bb36593135b4', '2ef50f93-192b-b168-969d-304c8e675e1d', '500b149d-0190-022d-d22a-c7d1190ada62', 'administrator');


SET session_replication_role TO DEFAULT;


