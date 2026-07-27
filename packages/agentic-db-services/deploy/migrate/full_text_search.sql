-- Deploy: migrate/full_text_search
-- made with <3 @ constructive.io

-- requires: migrate/foreign_key_constraint


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

INSERT INTO metaschema_public.full_text_search (
  id,
  database_id,
  table_id,
  field_id,
  field_ids,
  weights,
  langs,
  lang_column
) VALUES
  ('15826647-07b8-0d16-9ef8-e90e14ea44e6', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'd0e5e94a-f82a-fdd6-c1ec-5f9c5b5756d5', 'c69dbb96-c207-3b0b-70ea-de53b4adf929', '{d985f6e4-45d0-7d6a-8932-41089e4b59dd,bee6ab58-8e42-2094-77d6-9ca8827e98d6,b60f252e-0abb-80fb-f139-3a4e5b402291}', '{A,B,C}', '{english,english,english}', NULL),
  ('15fd7442-1f70-e920-53f6-55280726fff6', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '746b9969-1a47-eeb8-53bc-84a077486db2', '3d83e81c-340f-3387-9b21-4205afbf0a29', '{69b829b2-9231-a19e-3760-8f0da2c33699,4753ff29-d92a-5579-911a-e580e853d2fc}', '{A,B}', '{english,english}', NULL),
  ('57ae7ee6-a2a9-62c7-7d24-eba932f6c385', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '37eed52f-fa1c-528c-1f77-688ac4b81f40', 'a4f4e0bc-b596-d880-638d-a4b94a8d9119', '{3050636d-7452-329f-6fe6-f0f68eb8f4d3,5305a029-9c18-d75e-2d22-7a6cb5b41397,fa50842c-4f83-c8a6-e083-4138b31d3bf0,58c71e78-887d-f262-f9a9-c1c6313c7564}', '{A,A,B,C}', '{english,english,english,english}', NULL),
  ('5e032458-5443-59f2-38be-34214f9e350f', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'bd2a1437-8af8-97ac-b324-7315ac909a00', '40cf2039-1ee3-d466-858f-9693958fe7c9', '{8a527500-3cd3-d49d-d0a6-1c5245082cb7,07c352b3-d32a-b529-1fb1-0c19370c6648}', '{A,B}', '{english,english}', NULL),
  ('6d1a8c32-5820-0e62-0a04-eea23f7c8129', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '11f15d42-d31c-ea7d-8f44-834098c853e6', 'df9bd156-4b56-72d0-efca-e62545c912b4', '{90cf42e3-359c-7893-9ecd-7a1d21ef223d}', '{A}', '{english}', NULL),
  ('7068b8eb-bd0f-3d33-61c6-fe6734bc1e1b', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '53d41bb0-907f-f868-d963-3559c2fa6bc6', '9af3ade4-0615-b92f-0491-75902157fa85', '{a88eb080-7327-e431-8e00-c94b89e4bd43,a284dfdc-91fd-6486-9ecb-8853949fc707}', '{A,B}', '{english,english}', NULL),
  ('cb411ee2-6a31-4a1b-7eb1-3d297e38027a', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '5e8637f4-a7b5-1655-b15a-3518077c69e4', '5d5d1569-bedd-b9a0-85b6-8f0a6f22657e', '{271e584c-01b3-8be6-de0c-0adcb05eb654,d583663e-25a9-7d4d-35a7-7c4c0506889f,04ab83ce-cf3d-cd6e-5b7c-520208db7c0d}', '{A,B,C}', '{english,english,english}', NULL),
  ('eb1552da-df40-5d05-c879-74138b36546a', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'b6f18c67-1134-b1b8-e7a7-f9e282bd6811', '604385ed-3386-12fa-b124-8464aec744f6', '{fa429070-c842-7c62-0e84-db3278ef94f3,296c1340-97f2-1023-eb5b-451636ce74bf,510f420c-38fe-2160-674c-83a4e3c96a94}', '{A,B,C}', '{english,english,english}', NULL);


SET session_replication_role TO DEFAULT;


