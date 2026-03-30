-- Deploy: migrate/full_text_search
-- made with <3 @ constructive.io

-- requires: migrate/check_constraint


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
  langs
) VALUES
  ('019d3d14-e843-7e99-b40b-c77c3d7d72f6', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-e756-7f18-bcd9-be9300e74947', '019d3d14-e835-7695-8291-ca16de4efe8d', '{019d3d14-e7c7-7a03-b452-1b5df8dcecac,019d3d14-e801-7bdc-9e6f-69c6eff9f2a2}', '{A,B}', '{pg_catalog.simple,pg_catalog.simple}'),
  ('0329ab50-9a08-88c7-c1e4-060471a4ec2d', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '65992f25-538a-3963-67e7-939adf6b19d9', '2e732869-67c8-0635-f9d5-7893e95e0bd2', '{cd1a49ff-d941-6342-a44d-e12fe09b375c,c5c2357c-ee96-3811-0c79-9d584c74586a}', '{A,B}', '{english,english}'),
  ('0df1d542-ec1c-5820-89d9-9497da149fb8', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '4364af92-42ee-81cb-28d3-f35299b459db', 'f1592db3-d3fc-da86-df43-878153d4b11f', '{9a54209f-90bd-62c1-ce00-4665da11d3cc,9122441c-1050-11b0-f049-5c1acead0d16,d3a35325-88e0-b836-8c4d-0e1015afd3bb,4e72249b-fbb0-3636-946f-e8bb21241e98}', '{A,A,B,C}', '{english,english,english,english}'),
  ('2fe055f3-dbc4-ae99-206f-53315f5eb951', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'be9ade54-0c49-df6a-c068-1f2a3e9778d0', 'fa3db0e8-5aba-fcfb-cb57-9aaaa956dda8', '{68113c34-b69a-83ab-caa8-45c5b040ced9,42144217-1016-a77e-f2b3-808e34ae4277,d6243c6a-e09e-3d3f-af63-61338ac263c4}', '{A,B,C}', '{english,english,english}'),
  ('42328e71-59f3-f94b-8e73-b32edbecada1', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '3f0ca377-f427-ff14-829b-2bea82fc9961', 'bcab83ed-6cb6-200c-2421-a73c3eb3b07e', '{3b6a958f-3e4e-9e09-a846-8f4eeb5ab77e,8a14983d-aa77-20ef-95d9-7e6823ee0131,64ff1a20-93d3-9153-3535-26889c8b9b7f}', '{A,B,C}', '{english,english,english}'),
  ('8683bd14-3641-e4f9-e592-9c91f37a5b80', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '8e8f2988-bf97-9089-75d5-9efb46f6b4ff', 'c4fa0056-ab6e-a793-e66d-7a4e7059c97f', '{f0424251-014b-3cee-edc7-20fc1be09b56,d3b4f67a-880a-dc14-3a20-282e4a5e9829,4fc67ac9-ee5f-b927-1b3f-043c7c22530e}', '{A,B,C}', '{english,english,english}'),
  ('90cf0fcb-0d1c-7227-fa31-bf020b8a5846', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '3d430b69-0e10-b9b3-8a7b-f96509c3a60d', '49cbf19e-0967-ac94-a271-a12f796889cd', '{36b2e44b-f135-2706-73f9-523109d8dff4,909d707f-d396-1bb0-db88-e1661f5abf46}', '{A,B}', '{english,english}'),
  ('cd74c701-1eef-0ac3-b13b-503b3191e55e', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'efe0fa45-99a2-2725-2aaf-be04112efad1', 'bda5b323-b8c2-ec9a-5e94-5fde155022c5', '{ef15ab44-4418-b893-68ca-20685bbb5aad,35cad5f6-d045-57b4-959c-92fe4262c979}', '{A,B}', '{english,english}');


SET session_replication_role TO DEFAULT;


