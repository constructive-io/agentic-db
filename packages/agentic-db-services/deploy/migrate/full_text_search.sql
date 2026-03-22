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
  ('019d1795-4a53-7bfb-a78e-b7363dbc00b8', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-494e-7deb-bd76-39af3a5fa635', '019d1795-4a44-76f3-a42f-a48e6c7f6ad6', '{019d1795-49c1-7a1b-be54-dfd2465ba379,019d1795-4a10-772f-a3f2-4e67f6d0e55c}', '{A,B}', '{pg_catalog.simple,pg_catalog.simple}'),
  ('8c327193-848a-5d43-cf37-5f3840742bb3', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '13e1336c-adda-8c8e-2bf3-63cec825954d', 'aa827bcf-3cc9-9a67-953b-128f0f1039ae', '{cb3c705a-26f2-4cb3-c37f-281b032a54cb,e6ce254b-c329-ba6d-a566-7c1ecfbe0a13,fef8a316-0a27-f263-5319-f5d4a86c438a,881f8636-c32e-419b-9eca-0e2c25c63d3a}', '{A,A,B,C}', '{english,english,english,english}'),
  ('748e92fa-4a36-2cae-030a-162f7514a735', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '01a33e95-5b41-362f-3e6b-1054b87b4b3b', 'd9f80d8f-58cc-2272-8e4e-fa056657e55e', '{486d624c-608a-fc50-8400-1bcb4c71273a,dd0f7a5b-20a0-3ae0-e55d-060e8a4f08e7,3617e3aa-9995-c671-ba45-8c7a816adffe}', '{A,B,C}', '{english,english,english}'),
  ('f1cb0452-e197-cb38-07ca-c2abf4059748', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '7b6d6351-5012-eb0c-edb7-677430a232f0', '77bfe65d-1307-a79a-5a77-8af34301a3f2', '{f5ff9d91-9ad9-cc4d-48bf-48a0daf0e876,771e87b9-d91a-67be-7fa7-90f6e74e50fc,68064418-d432-799d-1a8c-5312e87efd67}', '{A,B,C}', '{english,english,english}'),
  ('284efc04-9c5e-eec9-124c-4e6ed825e9d6', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '12524478-b1a1-0964-023d-70e5525f5c5b', '38b14667-13d1-c1ce-a941-b709848cec1e', '{db2afd27-ac96-e9f0-f655-f488e485d010,fb1a1d9e-cdd9-b66d-01bb-4d3ab9d08937,c17b0667-03c1-b4fe-01c5-40e1cb8558e1}', '{A,B,C}', '{english,english,english}');


SET session_replication_role TO DEFAULT;


