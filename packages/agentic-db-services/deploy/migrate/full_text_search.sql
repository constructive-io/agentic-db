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
  ('019d13bc-22a7-7616-8902-7667bd43b46e', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-21ae-7eb2-b63f-9fb476e22f09', '019d13bc-2299-72dc-8b06-4ee6b20c80c3', '{019d13bc-222a-7725-b00c-3790c3678138,019d13bc-2263-7246-a80b-524d6ce5822f}', '{A,B}', '{pg_catalog.simple,pg_catalog.simple}'),
  ('022e042a-5c70-15b2-add0-3e6a88536a5c', '019d13bc-1f23-7305-9068-cef2ccaf4226', '0aa303a8-48c2-381a-79a2-0bec93aa2a89', 'bda14534-4214-b6f8-fde0-75c16a2f06ae', '{681e3e45-6027-d8c8-2fa6-ab4c1f2b9132,ef56ec1b-e13a-a47b-3b23-2c09587c0c5b,9fe4c3a2-41ad-3404-1c6c-f381c9e798b4,9cc6bc9b-104a-b0a4-886c-70c8973b65d3}', '{A,A,B,C}', '{english,english,english,english}'),
  ('33280fd1-3de6-f459-e84a-f02512d2e352', '019d13bc-1f23-7305-9068-cef2ccaf4226', '1bd6b161-5f93-2580-23c1-4b99d78f064f', '2f06f34a-034d-5350-5f1b-6097f2fd13b0', '{362065cc-15cf-5517-0c10-adea64215b0a,794896ef-21ed-e155-7996-bda37540f19d,06d04d55-5255-7e18-8d95-22b9dbc89dfb}', '{A,B,C}', '{english,english,english}'),
  ('c72d8414-55b2-33c1-b94d-83f63a398ced', '019d13bc-1f23-7305-9068-cef2ccaf4226', '168a2058-0f8e-841b-2332-ebfffc982b26', '613dd1b5-4816-d724-6b68-02d41aa3f47d', '{8b6fa37e-625a-1445-90ae-883078ca1a3b,c1549e94-f523-c1b1-87e0-000fe2bb9999,45e52061-23af-debd-747c-6efd0a712329}', '{A,B,C}', '{english,english,english}'),
  ('e39fbff2-919a-39b7-4cac-b5a93e418221', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'e140833e-d2ce-7516-e4ac-535f339dba6a', '62f086a1-0122-f71f-4441-b225abdcaba0', '{c7da0558-d446-fd1d-0981-6edef8c9acc3,81e90623-3b55-3ce1-439a-e94dc758ee47,34534172-f668-3c1a-4c06-5fce8fb0a907}', '{A,B,C}', '{english,english,english}');


SET session_replication_role TO DEFAULT;


