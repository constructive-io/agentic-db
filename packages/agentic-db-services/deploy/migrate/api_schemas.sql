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
  ('019d130c-f089-7909-a66a-7db4bb5707c8', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-edd7-7e55-8939-31993ec40326', '019d130c-f086-78d5-8904-2feb194d1093'),
  ('019d130c-f08c-77a2-bc74-dcffcdc98235', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-edd7-7e55-8939-31993ec40326', '019d130c-f088-778a-be12-62ba6c45e42a'),
  ('019d130c-f08d-7468-bfad-7bbeb787a9b8', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-edd9-7e69-a0e0-86ad6b589f64', '019d130c-f088-778a-be12-62ba6c45e42a'),
  ('019d130c-f08e-726c-afb1-a5d0aee1160a', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-ef3a-72e2-980b-0adf9c978ae5', '019d130c-f089-7154-9a11-55045b5509ac'),
  ('019d130c-f148-7fcd-87e7-4da37d561302', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-f095-7044-9f6d-6b3bd1c994f0', '019d130c-f086-78d5-8904-2feb194d1093'),
  ('019d130c-f14a-7140-a86b-8bba4fc1828f', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-f095-7044-9f6d-6b3bd1c994f0', '019d130c-f088-778a-be12-62ba6c45e42a'),
  ('019d130c-f14b-700a-a170-9dd6f4729569', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-f095-7044-9f6d-6b3bd1c994f0', '019d130c-f088-7ad3-b2da-16c399f2d759'),
  ('019d130c-f8ba-7307-8338-194e3195f49e', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-f774-78ae-bf70-3d1cee60d391', '019d130c-f086-78d5-8904-2feb194d1093'),
  ('019d130c-f8bb-7574-a555-b16bce307488', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-f774-78ae-bf70-3d1cee60d391', '019d130c-f088-778a-be12-62ba6c45e42a'),
  ('019d130c-f8bb-7b23-9ddf-d8dca29cbc65', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-f774-78ae-bf70-3d1cee60d391', '019d130c-f087-7ff0-b69a-b0199f9377b6'),
  ('019d130c-fd5d-72c2-b4b7-74dba78d1031', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-fbeb-7677-ae56-0be99522dd89', '019d130c-f086-78d5-8904-2feb194d1093'),
  ('019d130c-fd5e-794c-a434-c9e91eebee24', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-fbeb-7677-ae56-0be99522dd89', '019d130c-f088-778a-be12-62ba6c45e42a'),
  ('019d130c-fd5f-71c0-a0d0-99df282605f8', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-fbeb-7677-ae56-0be99522dd89', '019d130c-f087-7ff0-b69a-b0199f9377b6'),
  ('019d130d-0134-73aa-b6b5-cfa3ab45d286', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-f528-7521-ad98-5049be733d14', '019d130c-f086-78d5-8904-2feb194d1093'),
  ('019d130d-0141-7540-b3e4-1c3cb6c0ba44', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-f528-7521-ad98-5049be733d14', '019d130c-f088-778a-be12-62ba6c45e42a'),
  ('019d130d-014c-7e2f-86b4-8dd22682c710', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-f528-7521-ad98-5049be733d14', '019d130c-f087-7ff0-b69a-b0199f9377b6'),
  ('019d130d-15fb-7299-b9d1-8cdb93a73337', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-1478-775d-af81-1a664aec861e', '019d130c-f086-78d5-8904-2feb194d1093'),
  ('019d130d-15fc-7938-997c-d704f2e3baf3', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-1478-775d-af81-1a664aec861e', '019d130c-f088-778a-be12-62ba6c45e42a'),
  ('019d130d-15fd-7241-b39a-4c70d48ee52c', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-1478-775d-af81-1a664aec861e', '019d130c-f087-7ff0-b69a-b0199f9377b6'),
  ('019d130d-21df-7d16-93a6-5b4fc8192486', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-2060-7e0f-9f3e-6ea1df8c604b', '019d130c-f086-78d5-8904-2feb194d1093'),
  ('019d130d-21e1-78f1-b5c3-3e89b454f63a', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-2060-7e0f-9f3e-6ea1df8c604b', '019d130c-f088-778a-be12-62ba6c45e42a'),
  ('019d130d-21e2-73ea-9818-2cd4f6d784a5', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-2060-7e0f-9f3e-6ea1df8c604b', '019d130c-f087-7ff0-b69a-b0199f9377b6'),
  ('019d130d-a795-771f-ad68-3994dcbb3e36', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-a6b2-7851-9ce6-4522683de589', '019d130c-f086-78d5-8904-2feb194d1093'),
  ('019d130d-a798-7140-8193-44135ab43034', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-a6b2-7851-9ce6-4522683de589', '019d130c-f088-778a-be12-62ba6c45e42a'),
  ('019d130d-a799-7830-a0fb-02e39fb148e6', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-a6b2-7851-9ce6-4522683de589', '019d130c-f088-7ad3-b2da-16c399f2d759'),
  ('019d130d-aa19-725f-8785-495f9e62f940', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-a816-7411-a7a6-8f45bce99505', '019d130c-f086-78d5-8904-2feb194d1093'),
  ('019d130d-aa1b-7cb9-9d74-abcbb757e395', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-a816-7411-a7a6-8f45bce99505', '019d130c-f088-778a-be12-62ba6c45e42a'),
  ('019d130d-aa1d-7527-a593-d198388525ff', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-a816-7411-a7a6-8f45bce99505', '019d130c-f088-7ad3-b2da-16c399f2d759'),
  ('019d130d-babc-764f-8f9a-0e702bbb4bc2', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-b9cf-76bf-bc61-35da51b658dd', '019d130c-f086-78d5-8904-2feb194d1093'),
  ('019d130d-babe-7d11-9169-8e66b675d835', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-b9cf-76bf-bc61-35da51b658dd', '019d130c-f088-778a-be12-62ba6c45e42a'),
  ('019d130d-bac0-7481-8117-b34cce552d92', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-b9cf-76bf-bc61-35da51b658dd', '019d130c-f087-7ff0-b69a-b0199f9377b6'),
  ('019d130d-d324-73e8-bc13-1abf5c1d2487', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-d231-7344-851f-bb0c26d82f4b', '019d130c-f086-78d5-8904-2feb194d1093'),
  ('019d130d-d326-70d5-bcc8-0fcd8a406885', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-d231-7344-851f-bb0c26d82f4b', '019d130c-f088-778a-be12-62ba6c45e42a'),
  ('019d130d-d327-7aa1-ba21-dfa40af2e35e', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-d231-7344-851f-bb0c26d82f4b', '019d130c-f088-7ad3-b2da-16c399f2d759');


SET session_replication_role TO DEFAULT;


