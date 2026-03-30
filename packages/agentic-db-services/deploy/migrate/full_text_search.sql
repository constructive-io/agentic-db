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
  ('019d4100-440c-708d-9ba4-f180d566e051', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-42f6-7ae2-9811-58ffe46470b0', '019d4100-43fc-7548-bd08-4a4a80a2034e', '{019d4100-4381-71e5-b06c-08ae2c98927c,019d4100-43c2-7e25-a988-b8b5efb8a9f3}', '{A,B}', '{pg_catalog.simple,pg_catalog.simple}'),
  ('01c3d422-c451-e7cf-fb70-1494df4a3910', '019d4100-4020-73d6-9854-f8d0aaa616d3', '3e84d9dd-3677-f712-a249-57800f1ba0a1', '54342aec-b0e0-3866-f093-600aa0b592cd', '{ad558a43-a7f0-3efd-e3a7-6238e2d72fc2,d3201971-2feb-d90c-ca47-14484d63ffa0}', '{A,B}', '{english,english}'),
  ('6c5650de-0510-3ae8-fbcd-fdb9be37f2aa', '019d4100-4020-73d6-9854-f8d0aaa616d3', '214517ce-c770-bcbf-540c-292b29854e2e', 'b7cbd81c-8db7-69ad-2d2f-626c28029b9c', '{5e03a4aa-293c-4b41-3553-1eecf11f38d2,7f834d1b-6706-b72d-7436-c38bb59a1bed}', '{A,B}', '{english,english}'),
  ('6fee9734-0082-ea8b-2d06-cfaeb80bc9ac', '019d4100-4020-73d6-9854-f8d0aaa616d3', '62f575a3-a646-e205-b6a3-56e17673e7d5', 'c7ae3bdc-8d23-52d4-ff62-830fa5da74a1', '{a80704af-df2c-c8e5-2554-3e613325e9e7,a3b31d9c-6122-4254-cf8a-c4308b8abfba,04dbfe80-f020-5d52-9aa2-bab04f653f0d}', '{A,B,C}', '{english,english,english}'),
  ('9a8a1136-4e8a-631f-0ce1-ac77a64653ed', '019d4100-4020-73d6-9854-f8d0aaa616d3', '3e91e7ac-5a53-19a9-3bab-649cced5630c', '041dc3be-357a-df0a-271d-268f96e38b4d', '{27c51a1c-3bba-5bcf-d1eb-075b8e05d6af,9098e092-5c6e-3899-dbe9-83e4a8a0d7f2}', '{A,B}', '{english,english}'),
  ('c233713f-1be1-1607-03ee-2632b8a50488', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'f778807a-095e-a4fe-f33e-89253f0e8d58', '7c8a7e8a-c32c-6d7a-fbe4-710a66b6a661', '{d14eef69-7bf0-ede4-34c0-6e9bf12409f1,78703755-14b5-a25b-2483-5d65a18119d9,633781b6-7dda-ea7f-446c-268a5f1c7924,fa1b86b7-5251-462c-5749-2da09a779bc0}', '{A,A,B,C}', '{english,english,english,english}'),
  ('c66cd60c-a69e-5045-d1a9-87fb40db8eb1', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'e38732e4-2c2e-54ca-b987-a751bde7bd1d', '9a7a1dc1-fe14-c503-845a-d5e377ac7a47', '{9c81e5fb-376c-c531-d11e-962f8960cad3,fc070521-b3a5-17c4-5ebd-26fe13f09551,6275e9fd-923d-6a29-9de7-5fb0f949501d}', '{A,B,C}', '{english,english,english}'),
  ('d30a7821-8858-4fa0-74e9-3ea67e7055c9', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'bffb9a0e-6190-8a84-9622-f1bcfc01c0a3', '2dde1868-0b4d-99e6-e8ec-6a04ecdc2e94', '{2955a4d1-79e6-087d-975b-0f7b63647c7a,096cd60d-337e-5553-69cf-10c5c676b77a,0644d8e1-5d95-d82d-1568-fd90b0f624e6}', '{A,B,C}', '{english,english,english}');


SET session_replication_role TO DEFAULT;


