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
  ('019d11d9-5823-7b37-8ad7-d0a7c70ec40b', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-57f5-7643-87a7-5f278469c434', 'administrator'),
  ('019d11d9-5838-71c0-8f8c-b5456a6cb7f4', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-57f5-7643-87a7-5f278469c434', 'authenticated'),
  ('019d11d9-5848-7e52-89da-23bd574d6619', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-57f5-7643-87a7-5f278469c434', 'anonymous'),
  ('019d11d9-58b8-7716-aab1-63bb26de8bea', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-57f7-7450-8cdc-56f16a3a663c', 'administrator'),
  ('019d11d9-58c8-7578-86b9-f09fb8721136', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-57f7-7450-8cdc-56f16a3a663c', 'authenticated'),
  ('019d11d9-58d9-7411-8503-859a6e3dd189', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-57f7-7450-8cdc-56f16a3a663c', 'anonymous'),
  ('019d11d9-5940-7da5-94ee-2dd75312dbda', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-5933-7365-91cc-cb5bb4a8bba9', 'administrator'),
  ('019d11d9-5951-71e4-aad7-dd371f8efd54', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-5933-7365-91cc-cb5bb4a8bba9', 'authenticated'),
  ('019d11d9-5962-7287-8386-46b6b2451d6b', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-5933-7365-91cc-cb5bb4a8bba9', 'anonymous'),
  ('019d11d9-59c8-73fe-8eac-3fc0a7254b26', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-59ba-7076-b4a4-176b7ed2442a', 'administrator'),
  ('019d11d9-59d9-7a6a-b652-f3a84c76e279', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-59ba-7076-b4a4-176b7ed2442a', 'authenticated'),
  ('019d11d9-59eb-7af6-a41b-eab397daadbb', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-59ba-7076-b4a4-176b7ed2442a', 'anonymous'),
  ('019d11d9-5a69-76d7-9524-234b12de0e44', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-5a57-7c42-8fea-59874686594d', 'administrator'),
  ('019d11d9-5a7b-7f5a-aaa0-1e07158de0cf', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-5a57-7c42-8fea-59874686594d', 'authenticated'),
  ('019d11d9-5a8e-73a7-8595-f167ec1f27ea', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-5a57-7c42-8fea-59874686594d', 'anonymous'),
  ('019d11d9-5e53-7955-9e6c-006f2089c685', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-5e47-76cc-9644-05e7a92626a9', 'administrator'),
  ('019d11d9-5e63-7695-adcb-5487361b72e5', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-5e47-76cc-9644-05e7a92626a9', 'authenticated'),
  ('019d11d9-5e74-75ea-839e-c1135c0fcba3', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-5e47-76cc-9644-05e7a92626a9', 'anonymous'),
  ('019d11d9-6058-714b-9289-147b566aa4fc', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-604b-7a97-92c4-28c87e7553a3', 'administrator'),
  ('019d11d9-606a-7439-8f47-d7828b37650c', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-604b-7a97-92c4-28c87e7553a3', 'authenticated'),
  ('019d11d9-607c-7bd6-9683-7eb5e292ad3d', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-604b-7a97-92c4-28c87e7553a3', 'anonymous'),
  ('019d11d9-60ec-7e3d-8995-8f5b09befbfe', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-60dc-7883-ae8b-a69658dafb64', 'administrator'),
  ('019d11d9-6100-7535-9ea7-466ed7459400', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-60dc-7883-ae8b-a69658dafb64', 'authenticated'),
  ('019d11d9-6111-7f01-9769-6ff52fbf71de', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-60dc-7883-ae8b-a69658dafb64', 'anonymous'),
  ('019d11d9-6443-752f-80c0-1cb6c19f10e1', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-6437-727c-877f-51da87756a96', 'administrator'),
  ('019d11d9-6453-7863-9794-432ca18f78e2', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-6437-727c-877f-51da87756a96', 'authenticated'),
  ('019d11d9-6463-7cfa-aa80-b1540c694a58', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-6437-727c-877f-51da87756a96', 'anonymous'),
  ('019d11d9-64cf-7b9b-b7a7-f5aa20bc02e3', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-64c0-75b8-bf4d-0b7d00404a3b', 'administrator'),
  ('019d11d9-64e0-74f3-ac9b-7e1d1f4bf8da', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-64c0-75b8-bf4d-0b7d00404a3b', 'authenticated'),
  ('019d11d9-64f1-72dc-8f61-122de4bdface', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-64c0-75b8-bf4d-0b7d00404a3b', 'anonymous'),
  ('019d11d9-67fd-7f6e-90ae-42ba524a0ad7', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-67f0-73cf-ae19-ce25b6d1ba46', 'administrator'),
  ('019d11d9-680f-7b8c-965b-a4773a0ff878', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-67f0-73cf-ae19-ce25b6d1ba46', 'authenticated'),
  ('019d11d9-6822-79c4-b934-63417bb171ba', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-67f0-73cf-ae19-ce25b6d1ba46', 'anonymous'),
  ('019d11d9-78d4-7651-85af-1d908e7b943f', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-78c4-70db-98c4-bfc3f260c891', 'administrator'),
  ('019d11d9-78e9-7b51-95f8-e0f9fed17717', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-78c4-70db-98c4-bfc3f260c891', 'authenticated'),
  ('019d11d9-78fe-73af-9610-a391c88ac28f', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-78c4-70db-98c4-bfc3f260c891', 'anonymous'),
  ('019d11d9-7980-7a63-b160-97aca68c01e9', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-796d-72a5-9b85-d8f30fe49093', 'administrator'),
  ('019d11d9-7994-78a0-931d-4b3e5be91e54', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-796d-72a5-9b85-d8f30fe49093', 'authenticated'),
  ('019d11d9-79a8-7dcf-867d-182b3102bf6a', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-796d-72a5-9b85-d8f30fe49093', 'anonymous'),
  ('019d11d9-8337-77ed-8cc3-17edb49a3f50', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-8326-773f-9e95-2885ab65ca4e', 'administrator'),
  ('019d11d9-8360-7088-b886-4d4703df7cbc', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-8326-773f-9e95-2885ab65ca4e', 'authenticated'),
  ('019d11d9-837c-7ab3-bc21-e31cc7da8f81', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-8326-773f-9e95-2885ab65ca4e', 'anonymous'),
  ('019d11d9-841d-76a9-b138-cd2d34233be7', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-8406-7c35-8133-14b44cd60fbd', 'administrator'),
  ('019d11d9-8435-796e-a55b-45623a0d1223', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-8406-7c35-8133-14b44cd60fbd', 'authenticated'),
  ('019d11d9-844a-7aa3-815b-70eecf8c1ab7', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-8406-7c35-8133-14b44cd60fbd', 'anonymous'),
  ('019d11d9-ec3a-7a31-b059-2b38a85860b5', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-ec24-744c-9fd7-ceaf6e081b3d', 'administrator'),
  ('019d11d9-ec52-7b13-8e59-3bd5af930db2', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-ec24-744c-9fd7-ceaf6e081b3d', 'authenticated'),
  ('019d11d9-ec69-76c0-bf5a-5f11d8e782b7', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-ec24-744c-9fd7-ceaf6e081b3d', 'anonymous'),
  ('019d11d9-ef60-7eec-8b3d-7de9056f87ed', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-ef4e-7d1f-a945-b3a274b2570c', 'administrator'),
  ('019d11d9-ef77-76a4-9c6c-dd375bdf8039', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-ef4e-7d1f-a945-b3a274b2570c', 'authenticated'),
  ('019d11d9-ef8c-7dcf-8dc6-28a5285780c5', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-ef4e-7d1f-a945-b3a274b2570c', 'anonymous'),
  ('019d11d9-fe41-753d-b3f8-7bb119c027af', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-fe2e-7763-807d-bfcc97df24e0', 'administrator'),
  ('019d11d9-fe57-7182-afcd-f7c33a89fbd1', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-fe2e-7763-807d-bfcc97df24e0', 'authenticated'),
  ('019d11d9-fe6e-7877-b1a6-e905983c4b62', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-fe2e-7763-807d-bfcc97df24e0', 'anonymous'),
  ('019d11da-0208-73d8-a2b5-84aec6915dc8', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11da-01f4-7d57-9c6a-119a769d4b88', 'administrator'),
  ('019d11da-0222-700a-bccd-9e745eb8d61b', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11da-01f4-7d57-9c6a-119a769d4b88', 'authenticated'),
  ('019d11da-0238-7cd2-b7fe-02a75f262ba0', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11da-01f4-7d57-9c6a-119a769d4b88', 'anonymous'),
  ('019d11da-0358-7804-8687-87fdac26ba42', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11da-0341-73a5-bbdf-63c4da9099ca', 'administrator'),
  ('019d11da-0370-7696-9bb3-d69f05f8c590', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11da-0341-73a5-bbdf-63c4da9099ca', 'authenticated'),
  ('019d11da-0386-7a66-9ee3-4d912ca94c1a', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11da-0341-73a5-bbdf-63c4da9099ca', 'anonymous'),
  ('019d11da-042e-7a6f-a985-67a9977d23be', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11da-0417-742d-8cb7-e8434091144f', 'administrator'),
  ('019d11da-0446-7332-92f8-8d49a560ac6b', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11da-0417-742d-8cb7-e8434091144f', 'authenticated'),
  ('019d11da-0464-7bf7-a058-4f77d66cd347', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11da-0417-742d-8cb7-e8434091144f', 'anonymous'),
  ('019d11da-13d3-7f59-a7ca-d9054dc96dca', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11da-13bf-70d2-aac6-828c5a7647ad', 'administrator'),
  ('019d11da-13ec-7bb7-8e87-5a1867938e1b', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11da-13bf-70d2-aac6-828c5a7647ad', 'authenticated'),
  ('019d11da-1404-7b5a-b869-9191f48a8317', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11da-13bf-70d2-aac6-828c5a7647ad', 'anonymous'),
  ('019d11da-14ae-7388-aa18-4f3ea5b92832', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11da-1497-7678-a9e1-25432a96498d', 'administrator'),
  ('019d11da-14c3-7fb0-b06b-6b840d2e29f7', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11da-1497-7678-a9e1-25432a96498d', 'authenticated'),
  ('019d11da-14dc-7164-842b-ce291ff72eb3', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11da-1497-7678-a9e1-25432a96498d', 'anonymous'),
  ('019d11da-2911-74f7-b7fa-913747955cca', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11da-28fe-7b31-a601-e20b4dc2e002', 'administrator'),
  ('019d11da-2926-7b18-8dc0-31c8c85a6bf1', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11da-28fe-7b31-a601-e20b4dc2e002', 'authenticated'),
  ('019d11da-2944-7b11-a172-3199b8f1f93a', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11da-28fe-7b31-a601-e20b4dc2e002', 'anonymous');


SET session_replication_role TO DEFAULT;


