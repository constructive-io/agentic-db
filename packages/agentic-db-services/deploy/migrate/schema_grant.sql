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
  ('019d0ffe-4da5-71ad-9c81-1a2a31baa3fd', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-4d7d-7dc4-aae5-1ec1be75b1ba', 'administrator'),
  ('019d0ffe-4db7-7e85-82f5-325bb0797bb8', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-4d7d-7dc4-aae5-1ec1be75b1ba', 'authenticated'),
  ('019d0ffe-4dc8-703f-b956-24bb49beb227', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-4d7d-7dc4-aae5-1ec1be75b1ba', 'anonymous'),
  ('019d0ffe-4e42-7706-bb28-f11d933797de', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-4d80-71bd-a460-1a587e9514ef', 'administrator'),
  ('019d0ffe-4e54-73f3-b4e9-eaaed47647aa', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-4d80-71bd-a460-1a587e9514ef', 'authenticated'),
  ('019d0ffe-4e65-7a38-a34c-fce9d53ce17f', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-4d80-71bd-a460-1a587e9514ef', 'anonymous'),
  ('019d0ffe-4ed7-7481-ae8b-f1a5e5e83fde', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-4ec6-7024-aefb-6538e1c65f80', 'administrator'),
  ('019d0ffe-4ee7-7be5-b296-4125e2a64065', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-4ec6-7024-aefb-6538e1c65f80', 'authenticated'),
  ('019d0ffe-4ef9-778b-bedf-8084c964105e', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-4ec6-7024-aefb-6538e1c65f80', 'anonymous'),
  ('019d0ffe-4f65-7b14-90ed-a5f34cd2c1b2', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-4f56-73f2-b04e-139199b7b924', 'administrator'),
  ('019d0ffe-4f81-7e5b-bceb-7f444b7bf3a9', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-4f56-73f2-b04e-139199b7b924', 'authenticated'),
  ('019d0ffe-4f93-7891-9281-c2b54cdaad94', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-4f56-73f2-b04e-139199b7b924', 'anonymous'),
  ('019d0ffe-5016-7035-af5b-f10e0717712c', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-5005-7453-aa5a-524b38bb4964', 'administrator'),
  ('019d0ffe-5027-70e2-942c-28afc5e6fff0', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-5005-7453-aa5a-524b38bb4964', 'authenticated'),
  ('019d0ffe-5038-75fe-a8ba-c3e46a564def', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-5005-7453-aa5a-524b38bb4964', 'anonymous'),
  ('019d0ffe-53f7-7663-9e2d-791bfbd74d27', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-53ea-7609-a293-cf598cb70844', 'administrator'),
  ('019d0ffe-5408-71f0-b189-ee39057e38d2', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-53ea-7609-a293-cf598cb70844', 'authenticated'),
  ('019d0ffe-5418-7f37-b3e4-5597dbcfea0c', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-53ea-7609-a293-cf598cb70844', 'anonymous'),
  ('019d0ffe-5607-71f2-a014-0db420ca887e', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-55fb-79a7-a36a-b7eefa012886', 'administrator'),
  ('019d0ffe-5617-72b7-8d22-fbf771302a50', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-55fb-79a7-a36a-b7eefa012886', 'authenticated'),
  ('019d0ffe-5628-718a-a587-edc22e4bfbd4', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-55fb-79a7-a36a-b7eefa012886', 'anonymous'),
  ('019d0ffe-5699-7092-91a5-a854a05dca99', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-5689-7417-991b-59dc348f6899', 'administrator'),
  ('019d0ffe-56aa-71cc-9b96-654441f50444', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-5689-7417-991b-59dc348f6899', 'authenticated'),
  ('019d0ffe-56bb-7459-bcec-7f613f93ec3e', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-5689-7417-991b-59dc348f6899', 'anonymous'),
  ('019d0ffe-59fc-71c0-ac5b-a13421e19e2c', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-59ed-7843-b6e2-96951d24124c', 'administrator'),
  ('019d0ffe-5a0d-7c10-b81f-54ee5db3246e', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-59ed-7843-b6e2-96951d24124c', 'authenticated'),
  ('019d0ffe-5a1f-70e6-a743-c134354292d2', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-59ed-7843-b6e2-96951d24124c', 'anonymous'),
  ('019d0ffe-5a8f-75d0-9c39-4736353f0317', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-5a7d-7ee0-8e58-299fa43bcd2b', 'administrator'),
  ('019d0ffe-5aa0-717b-9ea0-403268a711b8', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-5a7d-7ee0-8e58-299fa43bcd2b', 'authenticated'),
  ('019d0ffe-5ab2-7a02-b008-c9db16f42ffb', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-5a7d-7ee0-8e58-299fa43bcd2b', 'anonymous'),
  ('019d0ffe-5dc3-78f9-ae1b-9f288bc521cc', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-5db3-7d04-bb81-f7a810b15714', 'administrator'),
  ('019d0ffe-5dd5-7b31-a6a0-efc11704a312', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-5db3-7d04-bb81-f7a810b15714', 'authenticated'),
  ('019d0ffe-5de7-702f-a6b8-ea74a9c69e07', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-5db3-7d04-bb81-f7a810b15714', 'anonymous'),
  ('019d0ffe-6d81-7d8f-914e-ea1684a05a76', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-6d73-7f1b-9df9-450724399b61', 'administrator'),
  ('019d0ffe-6d94-7488-8fad-616844157e07', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-6d73-7f1b-9df9-450724399b61', 'authenticated'),
  ('019d0ffe-6da6-72d2-8164-8d63c8e23c55', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-6d73-7f1b-9df9-450724399b61', 'anonymous'),
  ('019d0ffe-6e21-7bda-b868-f38cef5e4a32', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-6e0f-7dfd-81e6-17f69d062f48', 'administrator'),
  ('019d0ffe-6e33-785f-97f9-63773b553f4a', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-6e0f-7dfd-81e6-17f69d062f48', 'authenticated'),
  ('019d0ffe-6e46-7b4d-93bd-c95a1d347d7d', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-6e0f-7dfd-81e6-17f69d062f48', 'anonymous'),
  ('019d0ffe-77b0-741c-9d9a-22b0edff091f', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-77a1-72fe-9020-0e3df17e655f', 'administrator'),
  ('019d0ffe-77c3-7606-acb9-3db25e563f6f', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-77a1-72fe-9020-0e3df17e655f', 'authenticated'),
  ('019d0ffe-77d6-78dd-910d-1b3fe2744fe1', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-77a1-72fe-9020-0e3df17e655f', 'anonymous'),
  ('019d0ffe-7857-7b60-bbf5-cf88940e86e4', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-7844-7f5e-95f9-cb42ffa06190', 'administrator'),
  ('019d0ffe-786b-7362-919c-ec9756dd59f7', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-7844-7f5e-95f9-cb42ffa06190', 'authenticated'),
  ('019d0ffe-787f-76bf-8cf4-7eb3c9b1303b', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-7844-7f5e-95f9-cb42ffa06190', 'anonymous'),
  ('019d0ffe-d5a1-7688-b206-277bdd3196c7', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-d58f-7f44-9e0d-38d0a2b6d2e0', 'administrator'),
  ('019d0ffe-d5b7-7155-a72a-65fdfb081a2f', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-d58f-7f44-9e0d-38d0a2b6d2e0', 'authenticated'),
  ('019d0ffe-d5cb-7b5e-97ed-edd932b7c306', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-d58f-7f44-9e0d-38d0a2b6d2e0', 'anonymous'),
  ('019d0ffe-d8cd-71c0-ba72-9dae039d0e00', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-d8bb-787d-afd6-15360479f5b7', 'administrator'),
  ('019d0ffe-d8e2-7808-90a4-21f5d898bb2d', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-d8bb-787d-afd6-15360479f5b7', 'authenticated'),
  ('019d0ffe-d8f8-7609-8f4c-9389185fd326', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-d8bb-787d-afd6-15360479f5b7', 'anonymous'),
  ('019d0ffe-e779-7d1d-bd86-e701fec8b1eb', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-e767-7bb0-a60f-1e5f516e5bb8', 'administrator'),
  ('019d0ffe-e790-7ebc-b159-c4cbcab5c36f', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-e767-7bb0-a60f-1e5f516e5bb8', 'authenticated'),
  ('019d0ffe-e7a7-7276-b31e-41b5ef667649', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-e767-7bb0-a60f-1e5f516e5bb8', 'anonymous'),
  ('019d0ffe-eb46-7f13-a508-cbfd06ef11a7', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-eb33-7292-8ac2-b92b377281ba', 'administrator'),
  ('019d0ffe-eb65-76cd-9947-a08e0d4b7b25', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-eb33-7292-8ac2-b92b377281ba', 'authenticated'),
  ('019d0ffe-eb7d-7596-a53a-5cf1735be8b9', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-eb33-7292-8ac2-b92b377281ba', 'anonymous'),
  ('019d0ffe-ec94-7d18-92df-da0fea8028e7', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-ec7f-7063-8b91-80cd2dd12080', 'administrator'),
  ('019d0ffe-ecac-7824-9be2-d3ea1ee5f0af', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-ec7f-7063-8b91-80cd2dd12080', 'authenticated'),
  ('019d0ffe-ecc2-779d-8e2f-dcc59d7d0de5', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-ec7f-7063-8b91-80cd2dd12080', 'anonymous'),
  ('019d0ffe-ed6a-7c58-99ab-834729f0ed91', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-ed54-7fef-933f-dacbeb5ee307', 'administrator'),
  ('019d0ffe-ed81-737b-8464-a08ee51090f9', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-ed54-7fef-933f-dacbeb5ee307', 'authenticated'),
  ('019d0ffe-ed97-7d9b-af7b-56714bf564b1', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-ed54-7fef-933f-dacbeb5ee307', 'anonymous'),
  ('019d0ffe-fb0b-7d87-ac15-b555a38e4c49', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-faf8-7914-b664-9b671fee8616', 'administrator'),
  ('019d0ffe-fb23-7c21-adb9-354306c513ce', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-faf8-7914-b664-9b671fee8616', 'authenticated'),
  ('019d0ffe-fb39-7d41-90cd-ec9f9c8e3c2d', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-faf8-7914-b664-9b671fee8616', 'anonymous'),
  ('019d0ffe-fbe7-7fee-b23b-41bb4379efd5', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-fbd1-74af-b0a9-707adc0d5c13', 'administrator'),
  ('019d0ffe-fbff-76a9-a9db-e98739263c4a', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-fbd1-74af-b0a9-707adc0d5c13', 'authenticated'),
  ('019d0ffe-fc16-7323-b10d-2efdd8165299', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-fbd1-74af-b0a9-707adc0d5c13', 'anonymous'),
  ('019d0fff-0fee-7d9c-ac4a-f979699c1033', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0fff-0fd9-771c-8075-ae20ba3e2c0a', 'administrator'),
  ('019d0fff-1007-7dd4-a5e1-e7f3a93b5fcc', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0fff-0fd9-771c-8075-ae20ba3e2c0a', 'authenticated'),
  ('019d0fff-1021-7e72-a504-3eacfed7f2db', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0fff-0fd9-771c-8075-ae20ba3e2c0a', 'anonymous');


SET session_replication_role TO DEFAULT;


