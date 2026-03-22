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
  ('1958d00a-edea-8754-d095-b86d6547d220', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '73977af2-89d9-0e71-6ef9-af9eb05df739', 'administrator'),
  ('62d05c6b-6663-1621-0eef-598a64404fc4', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '73977af2-89d9-0e71-6ef9-af9eb05df739', 'authenticated'),
  ('9ac52645-bd30-539d-01fa-a5e035067bbc', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '73977af2-89d9-0e71-6ef9-af9eb05df739', 'anonymous'),
  ('5e5a9691-9395-30fb-60da-0339dbeaa793', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '732d0b12-25d0-8213-5958-22b72c58c0ca', 'administrator'),
  ('6c274c11-39b2-69ef-886e-ed74b73ae430', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '732d0b12-25d0-8213-5958-22b72c58c0ca', 'authenticated'),
  ('e95980f8-b872-20ff-c50e-922524035e4e', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '732d0b12-25d0-8213-5958-22b72c58c0ca', 'anonymous'),
  ('718cf292-06f7-43f7-4947-a952d6027dd6', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'b62bbadd-e83f-ad42-cfab-b7c0e8b7f250', 'administrator'),
  ('7cab941b-2419-fc05-1267-f42e127a23f6', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'b62bbadd-e83f-ad42-cfab-b7c0e8b7f250', 'authenticated'),
  ('5440c87f-891f-ea40-baae-16991ff489de', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'b62bbadd-e83f-ad42-cfab-b7c0e8b7f250', 'anonymous'),
  ('85e37b50-99b5-29f3-136c-516675bc0fb1', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '31b36d8d-108e-89ec-22c1-d75625ffb4da', 'administrator'),
  ('6f1ad76f-980d-f3fd-c526-2e960812cb04', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '31b36d8d-108e-89ec-22c1-d75625ffb4da', 'authenticated'),
  ('7ef837c6-2066-0dea-2534-5a1dd5042fe9', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '31b36d8d-108e-89ec-22c1-d75625ffb4da', 'anonymous'),
  ('d7764cd7-4d41-4826-1b9a-5539571d69b1', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'a590b9ac-fbaf-5dd0-bce1-84cff079ebe8', 'administrator'),
  ('0b61a0d4-ae58-959b-8552-f1c7a2a7c9a9', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'a590b9ac-fbaf-5dd0-bce1-84cff079ebe8', 'authenticated'),
  ('1371c33a-47a9-5fe5-df8a-2a308342edc4', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'a590b9ac-fbaf-5dd0-bce1-84cff079ebe8', 'anonymous'),
  ('5fde95bb-e33e-4148-11a4-37f1b89061d8', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'a8090207-c915-30c6-0984-f42a82be403d', 'administrator'),
  ('cbaa4776-2459-51c9-eb03-e48afbd89cf5', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'a8090207-c915-30c6-0984-f42a82be403d', 'authenticated'),
  ('b4b45ada-f361-2e80-4c7c-013932801e82', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'a8090207-c915-30c6-0984-f42a82be403d', 'anonymous'),
  ('7e9321de-f202-dff1-0bd3-8b3e77b477d8', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'fa622281-9676-d3b2-9fc3-f5dca9776102', 'administrator'),
  ('322d7216-3e2a-f50f-c531-a3e82ac63752', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'fa622281-9676-d3b2-9fc3-f5dca9776102', 'authenticated'),
  ('46cceec0-5fdc-4136-fa7e-f582ed31c273', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'fa622281-9676-d3b2-9fc3-f5dca9776102', 'anonymous'),
  ('08fd53cb-3c3f-12a7-5bb5-9da37ae9c289', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '2061922e-bfa9-f0a6-e73b-62374777b202', 'administrator'),
  ('c84c0f39-ccff-ba28-02fe-f4d2a3afe3bf', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '2061922e-bfa9-f0a6-e73b-62374777b202', 'authenticated'),
  ('39a82725-08d9-38eb-b5db-c5808dadb30b', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '2061922e-bfa9-f0a6-e73b-62374777b202', 'anonymous'),
  ('a78994b2-47e0-3276-a121-6b731774d0e1', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '4876ab00-d88b-6ee9-d562-200acedcd846', 'administrator'),
  ('5fa282ea-32ee-1df3-afce-a8f4cd2c201f', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '4876ab00-d88b-6ee9-d562-200acedcd846', 'authenticated'),
  ('535c6331-a861-3292-737e-11c80c3366d8', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '4876ab00-d88b-6ee9-d562-200acedcd846', 'anonymous'),
  ('c8172735-e2eb-bc6a-6ec6-e7af6f41ed4a', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '13844e26-cc87-71d8-47db-93774a9d9be0', 'administrator'),
  ('4c5cccfb-ea3b-bc47-d937-dcd3b602913c', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '13844e26-cc87-71d8-47db-93774a9d9be0', 'authenticated'),
  ('b05d8977-6aa7-d167-d467-2fe3548d43fd', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '13844e26-cc87-71d8-47db-93774a9d9be0', 'anonymous'),
  ('2125bdc4-0cb1-82df-0fc7-1b35115112eb', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '8ef2f646-75ef-3277-eeb8-f2a25c531296', 'administrator'),
  ('6b8d81b9-f454-d398-d010-265867e4ba97', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '8ef2f646-75ef-3277-eeb8-f2a25c531296', 'authenticated'),
  ('27102c15-63a6-739f-19ae-5a031ebf60f4', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '8ef2f646-75ef-3277-eeb8-f2a25c531296', 'anonymous'),
  ('4e17b050-1466-b1d1-bb5b-229cd2616485', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '156281d5-710d-45aa-9729-fb999412dfc5', 'administrator'),
  ('dd4cba59-6a3d-143b-5b1a-580cf2393f95', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '156281d5-710d-45aa-9729-fb999412dfc5', 'authenticated'),
  ('4cda1f16-1038-0881-04c9-d6359a3b02ec', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '156281d5-710d-45aa-9729-fb999412dfc5', 'anonymous'),
  ('f9ad555b-46b6-eb1e-921f-bce8bdc19bf4', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '02711eaa-629d-c8fc-8ca3-c2998fccfeba', 'administrator'),
  ('ac83e525-f258-f7f1-b077-85cef707b3af', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '02711eaa-629d-c8fc-8ca3-c2998fccfeba', 'authenticated'),
  ('8a718ae6-087e-0dc7-696b-07575deb9850', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '02711eaa-629d-c8fc-8ca3-c2998fccfeba', 'anonymous'),
  ('93147bfd-d2b7-b752-6d7a-e4431133a236', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '45648a02-5229-1516-3409-361f8893c583', 'administrator'),
  ('ad4e6120-5370-2fcc-e7eb-b2e4fcec953d', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '45648a02-5229-1516-3409-361f8893c583', 'authenticated'),
  ('b2c492d6-2bb4-44f8-3dd9-390fd1a4e2e9', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '45648a02-5229-1516-3409-361f8893c583', 'anonymous'),
  ('9381ac13-ad69-c6ae-2978-234ace40eb4a', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '17108ef6-803e-1873-9c2a-6e930dd81cfa', 'administrator'),
  ('c15fb06c-0536-329c-20ee-0c9598c102e5', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '17108ef6-803e-1873-9c2a-6e930dd81cfa', 'authenticated'),
  ('92c28c29-2bbb-f678-1073-4d1625041735', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '17108ef6-803e-1873-9c2a-6e930dd81cfa', 'anonymous'),
  ('372870cb-a3ac-4e7f-55f9-11ab063709fb', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '0e71ab69-6ae2-07e0-39cb-1368faa2f7f5', 'administrator'),
  ('b077686d-e666-7c54-9816-979df00731fb', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '0e71ab69-6ae2-07e0-39cb-1368faa2f7f5', 'authenticated'),
  ('334db884-6d43-a4e6-6f79-e6ac6f8675a3', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '0e71ab69-6ae2-07e0-39cb-1368faa2f7f5', 'anonymous'),
  ('0914efbf-d9bc-e477-9b22-86ac00ebdd8e', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '63d36554-dc1f-cb6d-8af7-5d38aa8f3fcc', 'administrator'),
  ('b295f73e-9704-ab17-d61b-314c3fc65bb6', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '63d36554-dc1f-cb6d-8af7-5d38aa8f3fcc', 'authenticated'),
  ('6d3b432c-25e7-e0cb-8ef7-36b98d37ec72', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '63d36554-dc1f-cb6d-8af7-5d38aa8f3fcc', 'anonymous'),
  ('5828dafb-6b3b-cf01-532e-7d535899fe75', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'dada6e89-ce7e-0f29-61fb-f74d7bcf2334', 'administrator'),
  ('86f9be0a-5dc7-b161-9622-5dff9c0b6021', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'dada6e89-ce7e-0f29-61fb-f74d7bcf2334', 'authenticated'),
  ('2e67a9fb-1e9e-0af8-3612-c2a9738cbe7a', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'dada6e89-ce7e-0f29-61fb-f74d7bcf2334', 'anonymous'),
  ('f914af6d-0a5c-bbd8-7999-456dbedf1ffe', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'a1472811-e8bf-d6d5-57aa-ed725576e8a0', 'administrator'),
  ('f9accd3d-407f-30c0-9ab8-ff64e0cda2fd', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'a1472811-e8bf-d6d5-57aa-ed725576e8a0', 'authenticated'),
  ('01695010-0c02-ff29-e0a1-bd5d02374968', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'a1472811-e8bf-d6d5-57aa-ed725576e8a0', 'anonymous'),
  ('928b6f64-4fb3-223e-4eef-54aaec2cc02b', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'e3508c8b-866b-4a91-6d3c-645e026ce92b', 'administrator'),
  ('eda97f82-e730-b923-c776-556cd187a1f8', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'e3508c8b-866b-4a91-6d3c-645e026ce92b', 'authenticated'),
  ('60d6fa42-a5b7-5707-6bff-92bb81037e34', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'e3508c8b-866b-4a91-6d3c-645e026ce92b', 'anonymous'),
  ('73c3000c-2e91-e618-9f8e-906ae20bd6de', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '34746a8f-5255-defc-7ade-ade252c2a847', 'administrator'),
  ('d83a16e8-20ee-77f7-0164-0d5d09235a69', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '34746a8f-5255-defc-7ade-ade252c2a847', 'authenticated'),
  ('2add9ee1-a4ca-7d46-fdcd-4ec23d71ee23', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '34746a8f-5255-defc-7ade-ade252c2a847', 'anonymous'),
  ('a27b81db-1969-46f9-37ba-a910945e5a05', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '217cd1d7-de79-df8f-48a0-7f3764dbbfc5', 'administrator'),
  ('1d2c55c0-7e24-88ad-7a4e-b61e18592908', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '217cd1d7-de79-df8f-48a0-7f3764dbbfc5', 'authenticated'),
  ('d53d3ecf-f5dc-e149-6966-336a7572f742', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '217cd1d7-de79-df8f-48a0-7f3764dbbfc5', 'anonymous'),
  ('e5b82e8b-5286-fe75-3a87-57c49c6b6a1c', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'f531c411-5246-5bc5-4a9d-c1fb42b5b6b2', 'administrator'),
  ('73d572d6-373a-5dc1-b62a-51ab30ac18fe', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'f531c411-5246-5bc5-4a9d-c1fb42b5b6b2', 'authenticated'),
  ('941dc4f4-0e54-fb37-5c59-2778a144fa3c', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'f531c411-5246-5bc5-4a9d-c1fb42b5b6b2', 'anonymous'),
  ('4e329d10-d8f1-0e28-2d48-ff486f5ba4a1', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '886b56eb-2f56-3cac-8fc2-b8610e1fce8e', 'administrator'),
  ('73363d7d-48f8-136f-02d1-ecc6da7594fb', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '886b56eb-2f56-3cac-8fc2-b8610e1fce8e', 'authenticated'),
  ('1eed8aba-3430-4cd5-1536-4597725788df', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '886b56eb-2f56-3cac-8fc2-b8610e1fce8e', 'anonymous');


SET session_replication_role TO DEFAULT;


