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
  ('019d416f-39cd-7a54-9c41-e16e49058e4f', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-384a-79e2-9379-99ca3460e274', '019d416f-39ba-74e3-acd3-201935f9bcb5', '{019d416f-390b-7c20-bb8b-3bc00df34b56,019d416f-395f-7de6-91cb-59346035f400}', '{A,B}', '{pg_catalog.simple,pg_catalog.simple}'),
  ('17792832-f24b-3e2a-c46b-3792d13efab3', '019d416f-3253-7543-a058-30ea5a6b7e37', 'c1682394-90ca-6c81-d87b-99ad783d1696', '9429509d-cf41-cbb9-8d5f-952af442fabd', '{70a22326-7442-1ab2-85ea-2c0cd5b9af33,91e8b8e0-3473-5f6f-b00f-3f3c4d8e077d}', '{A,B}', '{english,english}'),
  ('4ab5325b-9319-89cd-2468-90937c353dcf', '019d416f-3253-7543-a058-30ea5a6b7e37', '87286c53-e3ed-fed7-cee3-e544a6bc453f', 'abe30f2a-7a96-85be-556b-6f9c5a32738f', '{e2f5718b-f807-608d-8efc-cd50af569d76,5d0791bf-c6b1-f18c-7c26-4cc6aeb82bea,17641e8e-34c1-e5c5-941d-cfd421a7d7f4}', '{A,B,C}', '{english,english,english}'),
  ('501ade1b-ebb1-c0b8-dd86-986b283c911e', '019d416f-3253-7543-a058-30ea5a6b7e37', 'eb0ea657-b417-c82b-1344-4952ad8eba27', 'c8527dc4-cfe8-048a-fbe6-eecfdd982909', '{5ffad9d1-7340-de5a-dcf7-856f5f0ce47c,008bae90-21b3-dd10-6b3b-158366d4b923}', '{A,B}', '{english,english}'),
  ('5a14f63d-e2e8-8152-8ea5-3f9752d20811', '019d416f-3253-7543-a058-30ea5a6b7e37', 'd7c080f1-1ea7-8864-abd2-e70b73abc395', '0e422986-444e-8671-01bd-98ce2dd1afff', '{05da68f7-6c65-bea0-82b5-d7bbdd0f8ee2,403fe639-4ecb-5071-38d6-b6f9541556f9,b2de758c-e13d-23f6-c725-2a1859762eb8}', '{A,B,C}', '{english,english,english}'),
  ('5e4fbe3a-8c86-343c-430f-be02c783fc6f', '019d416f-3253-7543-a058-30ea5a6b7e37', '699ee092-517a-ef90-0291-787cc989808b', '0ffda8a5-44fb-4eb4-2b62-9dda68d88d98', '{5c9ac6db-3fab-eb4d-909e-52dd632beba2,f26d4f6f-cde5-6b70-9f0a-05eca3ffaa62}', '{A,B}', '{english,english}'),
  ('885c12ab-2aa1-efda-a5dc-48295000e8b7', '019d416f-3253-7543-a058-30ea5a6b7e37', '9919897e-dd5e-eafc-dc03-bfb92ab72f2b', 'd33f29f0-cd6a-996d-c772-7507acbcaf1b', '{5cec894e-d399-f672-57e8-cdb8936e550a,a981915a-2250-de6a-36ff-b56a7143cc7a,e06b3059-9446-be34-18b9-f3395bf108b3}', '{A,B,C}', '{english,english,english}'),
  ('f330718a-a026-e148-3ba2-9a5a280a402c', '019d416f-3253-7543-a058-30ea5a6b7e37', '1350713a-fe33-a8c1-31fb-c7f0f81984eb', '4a5beca8-bb2d-b4e4-d851-cc9b445fcbde', '{6fdd6bb3-6211-3d83-55da-30f2fac97006,8fb27d33-b020-4f68-797c-3f225e1491fb,80e3eac0-eac0-a912-d232-9efcdec1cd09,6803058e-404c-53d8-06df-1b1f676862e9}', '{A,A,B,C}', '{english,english,english,english}');


SET session_replication_role TO DEFAULT;


