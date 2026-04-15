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
  ('019d934f-8b17-7fb2-a1c9-a739c03ef530', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-898e-73d5-9f57-6c8589048db5', '019d934f-8afb-7cbe-88b6-a285b9669fd6', '{019d934f-8a46-7cb8-a25d-636c1aaec5fa,019d934f-8aa3-7535-84ea-07248e8f42a1}', '{A,B}', '{pg_catalog.simple,pg_catalog.simple}'),
  ('0dd6490d-b4bf-60d3-088c-c021b40e8df0', '019d934f-84fc-7efb-8598-917bbf218b99', '2802c26c-7f2a-e8a0-31b9-fa4db3e04cca', '74790fd2-1463-4c61-5633-e027449cd844', '{f1823d74-5870-cf46-284c-9e7b0fac14aa,627b416a-a33d-5c4d-8980-74c492ba13a7,c0c8e3e6-0fcc-95e6-9e1f-e67f09e9c544}', '{A,B,C}', '{english,english,english}'),
  ('3de577f9-9df6-a684-8ebe-5b22ffa6ea1d', '019d934f-84fc-7efb-8598-917bbf218b99', '4b07d7d8-c0fa-1dfe-dd76-89649b1ef3d2', '37af5af4-88ad-4126-945f-86403e17edf6', '{497e73c1-4405-1f1e-9e2a-caad5784d9ad,0e0c8284-40b6-f1f7-8622-9ecb78d93fec,ccbb877f-7797-15ac-4ec0-7f22431aaf12}', '{A,B,C}', '{english,english,english}'),
  ('6a2d9c1a-fcbc-7252-0d03-cd57de0aeb93', '019d934f-84fc-7efb-8598-917bbf218b99', 'cae1d8d6-c617-67ee-9a18-c5bd073e787e', 'ffed3ff8-743a-ed2c-d42b-3dcc6fb37b5d', '{3a334bed-4f07-9b45-2e40-5107e39580a0,10c973e0-697e-a539-43ec-33c254c87d7e}', '{A,B}', '{english,english}'),
  ('875cf87c-c8c8-d528-6530-f5083ef14047', '019d934f-84fc-7efb-8598-917bbf218b99', 'db14277a-1d06-2c27-7c19-d32e2177704f', '242ec7f2-51de-28ce-f859-d2a903f244ae', '{4cc0042c-3ce8-c5ea-2ec0-0c589d6a8bb2,c91bfdd4-b1c8-1849-7771-7fe78100cedc,77227a96-fc6f-79f7-eabf-bb11fc99b395,4a7c42e4-052c-0977-0ddf-910ca1ff4797}', '{A,A,B,C}', '{english,english,english,english}'),
  ('c08936f4-3aae-f080-31f5-384bae364054', '019d934f-84fc-7efb-8598-917bbf218b99', '7510156c-dd84-1b03-308c-195541d99572', '585d77da-0262-6295-c14e-bbc96a7e8e46', '{2981556f-d7f9-2a00-4e92-95f425604f65,461faf6f-394e-32f0-42e7-f1d74edf89b3,76ac796b-bdad-6295-b2db-cd19840bfea3}', '{A,B,C}', '{english,english,english}'),
  ('ccc60666-6f67-d60e-620b-27d6ccfacbea', '019d934f-84fc-7efb-8598-917bbf218b99', '6800e371-493b-17a8-15d2-4295bcc20ec3', '78d163fb-050c-0e00-527f-be66e0fa9b0a', '{05da0e0e-97e9-ea97-c9ea-a945e6472e15,78ceb12c-9e68-ea13-ee92-802547159940}', '{A,B}', '{english,english}'),
  ('eb7259d5-b317-00f4-b0c4-50f2a946b3f2', '019d934f-84fc-7efb-8598-917bbf218b99', '5c09f251-3297-a8db-1466-5c8b2ec9b686', 'cba1991d-cbdc-2d23-fdcb-91752d741da3', '{893f25cd-4f05-1b58-77e9-5b13ea59b4f5,8963f960-db79-18fd-a80c-9c827b5b04cd}', '{A,B}', '{english,english}');


SET session_replication_role TO DEFAULT;


