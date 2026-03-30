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
  ('019d3d14-e509-7053-96a1-148636891e97', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-e4e7-7c24-8410-ba082ff14805', 'administrator'),
  ('019d3d14-e519-7a02-968a-4ca5b6cb7bd7', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-e4e7-7c24-8410-ba082ff14805', 'authenticated'),
  ('019d3d14-e529-7cea-9ff2-b708b388d4c1', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-e4e7-7c24-8410-ba082ff14805', 'anonymous'),
  ('019d3d14-e582-7c0b-860f-72b997bfdd72', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-e4e9-7ba4-977e-1842b1c622be', 'administrator'),
  ('019d3d14-e590-7603-a7a2-0b6d20920bc0', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-e4e9-7ba4-977e-1842b1c622be', 'authenticated'),
  ('019d3d14-e5a0-725c-ac2e-aa394884ed48', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-e4e9-7ba4-977e-1842b1c622be', 'anonymous'),
  ('019d3d14-e5f8-74ab-bdef-23c2cdba22b2', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-e5ec-7079-b124-44e841c2c66b', 'administrator'),
  ('019d3d14-e605-7bd0-b7df-f41423a74d09', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-e5ec-7079-b124-44e841c2c66b', 'authenticated'),
  ('019d3d14-e613-79ea-8272-0b07c86dc771', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-e5ec-7079-b124-44e841c2c66b', 'anonymous'),
  ('019d3d14-e668-7531-863b-da2f00a04afc', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-e65c-7a7f-ba81-49bacc79816d', 'administrator'),
  ('019d3d14-e675-7ddf-a447-1f208d6a1541', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-e65c-7a7f-ba81-49bacc79816d', 'authenticated'),
  ('019d3d14-e683-7631-8446-d31186cddbd7', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-e65c-7a7f-ba81-49bacc79816d', 'anonymous'),
  ('019d3d14-e6ec-7707-9506-455752cbe167', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-e6e0-7573-ab64-323d1cdd7cd6', 'administrator'),
  ('019d3d14-e6f9-7907-b73e-cb804ef14c7a', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-e6e0-7573-ab64-323d1cdd7cd6', 'authenticated'),
  ('019d3d14-e707-7e46-acef-c5c682a6c656', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-e6e0-7573-ab64-323d1cdd7cd6', 'anonymous'),
  ('019d3d14-ea1e-76d5-baef-799e32d7de21', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-ea14-72c7-ab2a-04b31513f93e', 'administrator'),
  ('019d3d14-ea2c-7b00-abb6-0023cd6f04a1', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-ea14-72c7-ab2a-04b31513f93e', 'authenticated'),
  ('019d3d14-ea3b-7ab2-89ca-802e378ce610', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-ea14-72c7-ab2a-04b31513f93e', 'anonymous'),
  ('019d3d14-ebcb-7f25-9e8d-2618836557ba', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-ebc2-7b69-8a32-3c7696c40ef3', 'administrator'),
  ('019d3d14-ebd9-766b-a469-de8b458e060b', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-ebc2-7b69-8a32-3c7696c40ef3', 'authenticated'),
  ('019d3d14-ebe7-7ae2-bc5f-a3951d9ba8c3', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-ebc2-7b69-8a32-3c7696c40ef3', 'anonymous'),
  ('019d3d14-ec42-71fc-9192-95aa2ae68afa', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-ec35-72f7-943d-fbc2a569424a', 'administrator'),
  ('019d3d14-ec50-7566-bf48-e09ee6baf2f7', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-ec35-72f7-943d-fbc2a569424a', 'authenticated'),
  ('019d3d14-ec5f-78ae-9e4d-6881240bd962', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-ec35-72f7-943d-fbc2a569424a', 'anonymous'),
  ('019d3d14-ef42-785f-8853-7165804bd28e', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-ef38-7646-a438-2558ec621de0', 'administrator'),
  ('019d3d14-ef50-7a84-8c04-ffd000ccf207', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-ef38-7646-a438-2558ec621de0', 'authenticated'),
  ('019d3d14-ef5f-723a-ab2e-be725902126c', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-ef38-7646-a438-2558ec621de0', 'anonymous'),
  ('019d3d14-efbe-7923-8a18-8355e1732f2a', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-efb1-794e-8eee-db9422566dca', 'administrator'),
  ('019d3d14-efcc-7322-bf77-7dc4481b4396', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-efb1-794e-8eee-db9422566dca', 'authenticated'),
  ('019d3d14-efda-787b-ab4f-ef39030be8db', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-efb1-794e-8eee-db9422566dca', 'anonymous'),
  ('019d3d14-f28e-7eb8-b749-ca4a44583589', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-f282-7e09-b26b-97ab505e6016', 'administrator'),
  ('019d3d14-f29e-7942-bc91-267cfa00b284', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-f282-7e09-b26b-97ab505e6016', 'authenticated'),
  ('019d3d14-f2ad-7ef5-9b41-e2d88ba12946', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-f282-7e09-b26b-97ab505e6016', 'anonymous'),
  ('019d3d15-00ec-7f26-bed7-1a2b725e381e', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-00e0-7300-94bf-42cdbc3e8b9e', 'administrator'),
  ('019d3d15-00fd-7426-a305-5497584879ee', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-00e0-7300-94bf-42cdbc3e8b9e', 'authenticated'),
  ('019d3d15-010d-784e-86f2-b6edf89f0374', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-00e0-7300-94bf-42cdbc3e8b9e', 'anonymous'),
  ('019d3d15-017b-7dc0-9f76-e3726361537f', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-016c-7a1a-b35f-2013f481914b', 'administrator'),
  ('019d3d15-018b-7b4b-a96b-e7e9f719ff09', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-016c-7a1a-b35f-2013f481914b', 'authenticated'),
  ('019d3d15-019b-7f75-bb90-4f0048ae793d', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-016c-7a1a-b35f-2013f481914b', 'anonymous'),
  ('019d3d15-0a3a-7b94-b43e-e790fd8a0520', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-0a2d-7891-a59e-8dff9fa730ee', 'administrator'),
  ('019d3d15-0a4c-71f7-8d30-bd6c8dedaa0d', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-0a2d-7891-a59e-8dff9fa730ee', 'authenticated'),
  ('019d3d15-0a5d-78a8-a3ea-3adf3c12f686', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-0a2d-7891-a59e-8dff9fa730ee', 'anonymous'),
  ('019d3d15-0ad0-7d0b-8e78-4372645dd5ed', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-0ac0-7558-a324-5b320ea79f50', 'administrator'),
  ('019d3d15-0ae1-7bbc-b8e0-86739a61b5a0', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-0ac0-7558-a324-5b320ea79f50', 'authenticated'),
  ('019d3d15-0af3-77f3-be7c-ec4309476141', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-0ac0-7558-a324-5b320ea79f50', 'anonymous'),
  ('019d3d15-5d67-736e-8155-b15750161d52', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-5d56-75b7-9b8f-6d84bd05eb11', 'administrator'),
  ('019d3d15-5d7a-7772-8dec-8b85e2287653', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-5d56-75b7-9b8f-6d84bd05eb11', 'authenticated'),
  ('019d3d15-5d8f-7995-90f7-d65319d6d323', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-5d56-75b7-9b8f-6d84bd05eb11', 'anonymous'),
  ('019d3d15-6054-77c1-bb95-ca1c8c0e4e98', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-6043-7486-bb54-456ca2316406', 'administrator'),
  ('019d3d15-6068-7b5c-8f94-dd63628b674f', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-6043-7486-bb54-456ca2316406', 'authenticated'),
  ('019d3d15-607e-7774-9576-3eff5a6e73bb', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-6043-7486-bb54-456ca2316406', 'anonymous'),
  ('019d3d15-6e89-7612-a77a-b91ffe366540', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-6e78-7942-b67d-c7673e22a59a', 'administrator'),
  ('019d3d15-6e9d-72ca-8a04-d700ee17d017', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-6e78-7942-b67d-c7673e22a59a', 'authenticated'),
  ('019d3d15-6eb2-7484-997e-3737ed77d141', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-6e78-7942-b67d-c7673e22a59a', 'anonymous'),
  ('019d3d15-721d-76b2-9234-00879f37aa8d', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-720a-7844-b950-86f630c27d9d', 'administrator'),
  ('019d3d15-7233-726c-8061-c59cfd487451', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-720a-7844-b950-86f630c27d9d', 'authenticated'),
  ('019d3d15-7248-73f1-b7e2-0a64db538afe', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-720a-7844-b950-86f630c27d9d', 'anonymous'),
  ('019d3d15-734b-7de7-80bd-56221cfda69d', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-7336-7a3d-886a-97420e3e69cb', 'administrator'),
  ('019d3d15-735f-7d76-a17d-b7d8e580595a', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-7336-7a3d-886a-97420e3e69cb', 'authenticated'),
  ('019d3d15-7374-7b47-8c59-802208565316', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-7336-7a3d-886a-97420e3e69cb', 'anonymous'),
  ('019d3d15-740a-7bff-bd71-3c54e3615495', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-73f7-7913-908f-626b5096c71c', 'administrator'),
  ('019d3d15-741e-7c19-b3a9-bf23b9a7e16d', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-73f7-7913-908f-626b5096c71c', 'authenticated'),
  ('019d3d15-7433-7b6c-be8f-8a22af38f878', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-73f7-7913-908f-626b5096c71c', 'anonymous'),
  ('019d3d15-80f7-7ec5-bda0-7888984adb87', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-80e5-79c7-86a8-8635225b77e9', 'administrator'),
  ('019d3d15-810d-7bc4-928e-4a7dd395f882', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-80e5-79c7-86a8-8635225b77e9', 'authenticated'),
  ('019d3d15-8122-7e69-8002-a552b3f5c824', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-80e5-79c7-86a8-8635225b77e9', 'anonymous'),
  ('019d3d15-81c5-79ec-91a8-32a69839de57', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-81af-7d10-9a0f-f99867462fec', 'administrator'),
  ('019d3d15-81db-7a16-b5a9-3fcdedca0ce8', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-81af-7d10-9a0f-f99867462fec', 'authenticated'),
  ('019d3d15-81f2-71ff-a8b6-51457a50cf6c', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-81af-7d10-9a0f-f99867462fec', 'anonymous'),
  ('019d3d15-9496-70f3-b26d-0fd954c63fd0', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-9483-7920-8090-41a359bea798', 'administrator'),
  ('019d3d15-94ad-7c27-9f64-d058ce4cf299', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-9483-7920-8090-41a359bea798', 'authenticated'),
  ('019d3d15-94c4-7f1b-8709-85b38497c53c', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-9483-7920-8090-41a359bea798', 'anonymous');


SET session_replication_role TO DEFAULT;


