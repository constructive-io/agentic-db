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
  ('019d0ffe-4ff6-794c-bf00-65b34bed6d43', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-4d7d-7dc4-aae5-1ec1be75b1ba', '019d0ffe-4ff2-72b5-b8f1-4f6a3365f133'),
  ('019d0ffe-4ff9-7da6-b99f-715a862172bd', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-4d7d-7dc4-aae5-1ec1be75b1ba', '019d0ffe-4ff4-7ff9-b08d-e9ff3f51d6cf'),
  ('019d0ffe-4ffa-7be0-977a-5863c8901cd8', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-4d80-71bd-a460-1a587e9514ef', '019d0ffe-4ff4-7ff9-b08d-e9ff3f51d6cf'),
  ('019d0ffe-4ffb-7a49-8e1b-a878b3f0e96e', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-4ec6-7024-aefb-6538e1c65f80', '019d0ffe-4ff5-7a58-89d1-af6992861560'),
  ('019d0ffe-5099-7f6a-83a9-ed194f744ea3', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-5005-7453-aa5a-524b38bb4964', '019d0ffe-4ff2-72b5-b8f1-4f6a3365f133'),
  ('019d0ffe-509b-7399-a980-b940c3b82f14', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-5005-7453-aa5a-524b38bb4964', '019d0ffe-4ff4-7ff9-b08d-e9ff3f51d6cf'),
  ('019d0ffe-509c-7068-83cc-45ba66bc1030', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-5005-7453-aa5a-524b38bb4964', '019d0ffe-4ff5-7302-b85c-2b116c4794e7'),
  ('019d0ffe-571d-753b-bb30-182efcac17ec', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-55fb-79a7-a36a-b7eefa012886', '019d0ffe-4ff2-72b5-b8f1-4f6a3365f133'),
  ('019d0ffe-571e-7967-85f4-3ea1e8473b7d', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-55fb-79a7-a36a-b7eefa012886', '019d0ffe-4ff4-7ff9-b08d-e9ff3f51d6cf'),
  ('019d0ffe-571f-7016-a7f2-739a78ea1446', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-55fb-79a7-a36a-b7eefa012886', '019d0ffe-4ff4-7679-ad54-fb62c1086ceb'),
  ('019d0ffe-5b15-78c8-b6aa-c9015c49c970', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-59ed-7843-b6e2-96951d24124c', '019d0ffe-4ff2-72b5-b8f1-4f6a3365f133'),
  ('019d0ffe-5b16-7fcf-9035-236e8d60a54e', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-59ed-7843-b6e2-96951d24124c', '019d0ffe-4ff4-7ff9-b08d-e9ff3f51d6cf'),
  ('019d0ffe-5b17-7566-9e6d-9d88380b3656', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-59ed-7843-b6e2-96951d24124c', '019d0ffe-4ff4-7679-ad54-fb62c1086ceb'),
  ('019d0ffe-5e47-762e-bb09-63f2b3196077', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-53ea-7609-a293-cf598cb70844', '019d0ffe-4ff2-72b5-b8f1-4f6a3365f133'),
  ('019d0ffe-5e51-7709-9ab4-c756e677d650', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-53ea-7609-a293-cf598cb70844', '019d0ffe-4ff4-7ff9-b08d-e9ff3f51d6cf'),
  ('019d0ffe-5e58-74fa-b9e9-dcd1c87f5fa2', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-53ea-7609-a293-cf598cb70844', '019d0ffe-4ff4-7679-ad54-fb62c1086ceb'),
  ('019d0ffe-6eb1-7405-9e6b-19d85519d8e4', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-6d73-7f1b-9df9-450724399b61', '019d0ffe-4ff2-72b5-b8f1-4f6a3365f133'),
  ('019d0ffe-6eb2-7a54-abfe-324614e2825b', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-6d73-7f1b-9df9-450724399b61', '019d0ffe-4ff4-7ff9-b08d-e9ff3f51d6cf'),
  ('019d0ffe-6eb3-73fa-987d-0576fa2028b4', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-6d73-7f1b-9df9-450724399b61', '019d0ffe-4ff4-7679-ad54-fb62c1086ceb'),
  ('019d0ffe-78ef-7449-a91e-b64605e6c09f', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-77a1-72fe-9020-0e3df17e655f', '019d0ffe-4ff2-72b5-b8f1-4f6a3365f133'),
  ('019d0ffe-78f0-7ebf-8afb-858625ef6ef0', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-77a1-72fe-9020-0e3df17e655f', '019d0ffe-4ff4-7ff9-b08d-e9ff3f51d6cf'),
  ('019d0ffe-78f1-7a8d-90bb-32a2387a5a49', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-77a1-72fe-9020-0e3df17e655f', '019d0ffe-4ff4-7679-ad54-fb62c1086ceb'),
  ('019d0ffe-ec0b-792a-adf6-171bc8855bf3', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-eb33-7292-8ac2-b92b377281ba', '019d0ffe-4ff2-72b5-b8f1-4f6a3365f133'),
  ('019d0ffe-ec0d-7e39-a2fe-c87dae39682c', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-eb33-7292-8ac2-b92b377281ba', '019d0ffe-4ff4-7ff9-b08d-e9ff3f51d6cf'),
  ('019d0ffe-ec0f-74ad-b422-fa580350c9ab', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-eb33-7292-8ac2-b92b377281ba', '019d0ffe-4ff5-7302-b85c-2b116c4794e7'),
  ('019d0ffe-ee24-7113-b3ab-2310dc5dd459', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-ec7f-7063-8b91-80cd2dd12080', '019d0ffe-4ff2-72b5-b8f1-4f6a3365f133'),
  ('019d0ffe-ee26-7343-8b95-f3cfa3e977dd', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-ec7f-7063-8b91-80cd2dd12080', '019d0ffe-4ff4-7ff9-b08d-e9ff3f51d6cf'),
  ('019d0ffe-ee27-79b4-8237-1c484df47c0d', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-ec7f-7063-8b91-80cd2dd12080', '019d0ffe-4ff5-7302-b85c-2b116c4794e7'),
  ('019d0ffe-fbcb-7b4e-bd87-2ba2f2bbb47f', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-faf8-7914-b664-9b671fee8616', '019d0ffe-4ff2-72b5-b8f1-4f6a3365f133'),
  ('019d0ffe-fbcd-7e1c-b93d-70fc3ec9a271', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-faf8-7914-b664-9b671fee8616', '019d0ffe-4ff4-7ff9-b08d-e9ff3f51d6cf'),
  ('019d0ffe-fbcf-7648-871a-c3185540a58e', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-faf8-7914-b664-9b671fee8616', '019d0ffe-4ff4-7679-ad54-fb62c1086ceb'),
  ('019d0fff-10c1-70c7-a793-b5e46aa0e2a5', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0fff-0fd9-771c-8075-ae20ba3e2c0a', '019d0ffe-4ff2-72b5-b8f1-4f6a3365f133'),
  ('019d0fff-10c2-7eb5-b49d-c42ef587be0a', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0fff-0fd9-771c-8075-ae20ba3e2c0a', '019d0ffe-4ff4-7ff9-b08d-e9ff3f51d6cf'),
  ('019d0fff-10c4-7b5b-8f51-9a74e3b2c172', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0fff-0fd9-771c-8075-ae20ba3e2c0a', '019d0ffe-4ff5-7302-b85c-2b116c4794e7');


SET session_replication_role TO DEFAULT;


