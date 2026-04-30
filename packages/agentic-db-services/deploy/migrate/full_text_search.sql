-- Deploy: migrate/full_text_search
-- made with <3 @ constructive.io

-- requires: migrate/primary_key_constraint


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
  ('0c563bea-6adf-31fa-d3e4-8eb6395a9a8d', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'b5e1abd5-17cf-20ce-e71c-3e6a03474220', '9f629048-4579-0406-f33d-99f97b190f0e', '{dcc59d42-bf1b-d88b-8590-556b104c4aab,ddd61e87-82da-6cc3-68d5-1ba0ae727620}', '{A,B}', '{english,english}'),
  ('18bcee27-58b4-f31e-953d-3524402211e8', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'fd42a95b-1b13-c0f5-37a9-a146ac9a9daf', 'c0fd5f3a-6aaf-3dfb-d5e4-21d9b1647f6c', '{e097eaba-7fa3-b71b-2f57-ce3fde708cd1,c1714b5d-b990-0a77-da63-89fc2df0066b}', '{A,B}', '{english,english}'),
  ('4a63fcef-5793-b17e-5624-6b1ff5222bc3', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '8ba72cf8-8e97-ae4a-c993-4a1ba811dbb5', '24c5a321-846b-391e-a51a-bc565360975f', '{ff9611d5-5cba-aeda-0a6d-c4126c0a0894,3658f9cb-59bd-d14a-6331-51edfa6f60fc,6a079919-9191-554d-58ab-2cb6d66cc342,0298fdae-8f0c-7e93-ba5a-c9691f70c27b}', '{A,A,B,C}', '{english,english,english,english}'),
  ('b3082621-d661-3e33-1f18-53008d7d5a6d', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'e9647772-04ff-0c06-5f38-ffa333580442', 'abd57dea-b517-8198-bc88-1ba7e8d9cb5d', '{f4f9c68a-efad-f0ea-20aa-0eb51d862ba3,d7124d66-bbda-f46e-3b28-e49fb62039e4,5cbbb094-3eaa-7fb6-b3e4-da4cf55ef716}', '{A,B,C}', '{english,english,english}'),
  ('bd85598c-39fe-1675-e29b-691814f85ad5', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '912ebcf0-670e-d837-42ce-9833df58fd28', 'c2c86f00-5741-5795-ec8e-7f57d4cc18cb', '{b77df0be-2320-32c3-4636-b2cf585c1f55,e4d34cf4-83bd-48ec-0277-c85ab40bb818,9dd58202-209a-7166-1fdb-b436e1692dd8}', '{A,B,C}', '{english,english,english}'),
  ('c02ef28b-cac7-2737-7887-180f3ef199d9', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'aa16abb5-725b-fa65-4ccf-2e2039a5dd1c', '2201939a-34b8-824a-1239-b5d1920982ef', '{23addd57-4e7b-8452-3939-fef2c1bbe7e6,bf823d49-701a-15e7-b686-ff3b3207e8ce}', '{A,B}', '{english,english}'),
  ('c03a6c6e-1ed7-a58c-b047-9283de8219ba', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'b5b589a0-7229-3fe3-d964-bec7a58797e1', '4aa4c178-fca5-b2cb-f30d-8d8f2a3ccd6e', '{7cbad87b-0451-9273-843c-8a34bc944d75,48234d13-fe62-ae6e-c64b-6b4ced6c5d59,b757d890-ab0a-e85c-c9a3-851fee811234}', '{A,B,C}', '{english,english,english}');


SET session_replication_role TO DEFAULT;


