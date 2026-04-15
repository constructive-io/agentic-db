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
  ('0f606fd2-b838-5a17-ccec-a39d036b0e37', '019d937b-b671-77da-9a1e-5b9b26705894', '7e2948e3-505c-135b-a5d0-77451a71acfe', '05dc3650-5773-5e7c-20b3-616e01130604', '{b475efc7-1ba4-f00c-0ac9-93e04842b310,4f088c6e-b53d-0281-045c-b5018052ba57}', '{A,B}', '{english,english}'),
  ('57aad91f-bb42-d663-f840-36457165d651', '019d937b-b671-77da-9a1e-5b9b26705894', '6d337b2c-776d-29f6-f9bb-5b028b892b84', 'bb19b5fc-1639-dc3f-58bb-e4c847947e0c', '{7e90c5ef-e3f8-5e84-3af0-c7cae7a0d03f,b99bb8ec-b3c8-e273-43cf-716d6d3972ec}', '{A,B}', '{english,english}'),
  ('5fc48055-935f-0c6e-dd72-cf362a29509e', '019d937b-b671-77da-9a1e-5b9b26705894', 'd060e258-3e73-df4b-091a-d5dad51e9550', '342d47eb-4de3-13b3-71e7-17be30e7b0c6', '{985c0393-ed86-d75a-aea4-c56a677d1329,99a0add4-e019-335b-a557-745846eed4e1,2905695c-43fc-b8de-a2b9-ce6afbce7e70}', '{A,B,C}', '{english,english,english}'),
  ('b73bf34a-726d-d1dd-a975-950c20ccc690', '019d937b-b671-77da-9a1e-5b9b26705894', '0fbb4a04-7bcd-68ae-ff0a-01421a8ae745', '55aeae58-cf40-af00-69c3-27d7d7ac578c', '{0ee674cf-197b-ce45-0dc0-5f5a1397c699,0f98cfbb-b6c7-394a-1fd2-7783616b43cc}', '{A,B}', '{english,english}'),
  ('c1fc93a5-3e9c-1ed6-1d98-9a173299338f', '019d937b-b671-77da-9a1e-5b9b26705894', 'f8511e5b-6f62-2842-78f6-0a8b9d487183', '987f9695-ab44-8a79-a21c-f79b61ade837', '{211efb60-b15c-59f5-0420-4c54cb6e14e0,1e69269b-d66d-0177-cc36-5b9a06d01fe8,12061f60-74eb-7e50-ad6a-e76895ec2538}', '{A,B,C}', '{english,english,english}'),
  ('cb20b16a-53ff-d1f7-c519-16e1ed44fff4', '019d937b-b671-77da-9a1e-5b9b26705894', '857b79c6-1b92-4b90-501e-72cd33f8b43f', '50098cba-5277-5e72-a8ff-7935dd522dcb', '{6bb6f4b6-64fd-9663-7827-3ea46c4b065b,9625216b-1ff6-deeb-d185-a0382f2f7c2e,aa5db959-0262-7755-1bb0-7393891897a1}', '{A,B,C}', '{english,english,english}'),
  ('fefbc100-5d94-2f84-22f9-1156347fd194', '019d937b-b671-77da-9a1e-5b9b26705894', '288d5629-bcce-bd41-baab-4d69a77d5058', '93a9cbfc-9b7d-7c4d-493a-0a888e7b67bb', '{073d03ca-80ac-1a5a-dcfb-84186875c2f6,f779d5e9-7c1b-d70d-42e3-79df394600ff,f49d8007-57ec-8d87-9160-987b58273ef5,71f5db71-90c1-2b75-af1b-36b5a79984a2}', '{A,A,B,C}', '{english,english,english,english}');


SET session_replication_role TO DEFAULT;


