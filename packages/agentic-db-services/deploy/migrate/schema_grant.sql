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
  ('019d130c-edfb-799a-aacd-f795baeaae82', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-edd7-7e55-8939-31993ec40326', 'administrator'),
  ('019d130c-ee0e-7ac7-a53f-857ace7fd45f', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-edd7-7e55-8939-31993ec40326', 'authenticated'),
  ('019d130c-ee1e-7f74-8388-fcb1f9ff713e', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-edd7-7e55-8939-31993ec40326', 'anonymous'),
  ('019d130c-eeab-70ba-bfa6-97db7c1db1d1', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-edd9-7e69-a0e0-86ad6b589f64', 'administrator'),
  ('019d130c-eebc-7ff3-a20e-df22d5944317', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-edd9-7e69-a0e0-86ad6b589f64', 'authenticated'),
  ('019d130c-eecf-749d-8c44-47d2e556d167', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-edd9-7e69-a0e0-86ad6b589f64', 'anonymous'),
  ('019d130c-ef4a-76d4-8a0a-b3ad0beb6f72', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-ef3a-72e2-980b-0adf9c978ae5', 'administrator'),
  ('019d130c-ef5c-73ac-926f-1069b0af9ed6', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-ef3a-72e2-980b-0adf9c978ae5', 'authenticated'),
  ('019d130c-ef6e-7814-bfaa-695b34f86bdf', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-ef3a-72e2-980b-0adf9c978ae5', 'anonymous'),
  ('019d130c-efea-7c5c-82ca-a8c1ebf581c7', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-efd9-7af1-9df6-51db11689e22', 'administrator'),
  ('019d130c-effe-76d9-8abe-fcb71ae739cf', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-efd9-7af1-9df6-51db11689e22', 'authenticated'),
  ('019d130c-f012-7bd3-8898-60650127fc96', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-efd9-7af1-9df6-51db11689e22', 'anonymous'),
  ('019d130c-f0a7-7e7f-9307-72118de028ce', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-f095-7044-9f6d-6b3bd1c994f0', 'administrator'),
  ('019d130c-f0bc-7b08-9986-78f969fefcd6', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-f095-7044-9f6d-6b3bd1c994f0', 'authenticated'),
  ('019d130c-f0d1-7087-b402-1bb719ee95b7', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-f095-7044-9f6d-6b3bd1c994f0', 'anonymous'),
  ('019d130c-f536-784b-938a-1c494b06d17f', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-f528-7521-ad98-5049be733d14', 'administrator'),
  ('019d130c-f548-7bfd-90a5-4f631ae552ab', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-f528-7521-ad98-5049be733d14', 'authenticated'),
  ('019d130c-f55b-763c-a775-5bd78a773a39', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-f528-7521-ad98-5049be733d14', 'anonymous'),
  ('019d130c-f782-7a45-9603-7d8eb99448de', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-f774-78ae-bf70-3d1cee60d391', 'administrator'),
  ('019d130c-f795-78d8-bf1a-f508ffa0dc89', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-f774-78ae-bf70-3d1cee60d391', 'authenticated'),
  ('019d130c-f7a8-7b6e-8b4c-f44cd6373253', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-f774-78ae-bf70-3d1cee60d391', 'anonymous'),
  ('019d130c-f825-7d96-b179-62966c593c91', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-f814-738d-986f-e4f0308105a3', 'administrator'),
  ('019d130c-f838-7f11-81cf-8933b14088c5', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-f814-738d-986f-e4f0308105a3', 'authenticated'),
  ('019d130c-f84b-797c-8189-4a75e94f994b', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-f814-738d-986f-e4f0308105a3', 'anonymous'),
  ('019d130c-fbfd-7a84-aaa7-5a04ccffa44f', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-fbeb-7677-ae56-0be99522dd89', 'administrator'),
  ('019d130c-fc10-7f7a-972a-2cbd9d35a40d', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-fbeb-7677-ae56-0be99522dd89', 'authenticated'),
  ('019d130c-fc24-7b5f-a9d7-654e70a92532', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-fbeb-7677-ae56-0be99522dd89', 'anonymous'),
  ('019d130c-fca5-76f9-bb33-c8730892d399', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-fc93-7634-b76e-fd58a64ae608', 'administrator'),
  ('019d130c-fcb7-7c8f-86e3-c4a286351f29', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-fc93-7634-b76e-fd58a64ae608', 'authenticated'),
  ('019d130c-fccf-7dd9-bef6-e51b416f53e5', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-fc93-7634-b76e-fd58a64ae608', 'anonymous'),
  ('019d130d-0097-739a-840b-bc54637c7b58', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-0086-7cc7-9efe-8faaa639cb1e', 'administrator'),
  ('019d130d-00ab-7886-bca2-42c67559bdef', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-0086-7cc7-9efe-8faaa639cb1e', 'authenticated'),
  ('019d130d-00bf-700a-a2bc-2e13f3e03b36', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-0086-7cc7-9efe-8faaa639cb1e', 'anonymous'),
  ('019d130d-148a-7b8d-8596-ccd6cdb32674', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-1478-775d-af81-1a664aec861e', 'administrator'),
  ('019d130d-14a1-79d4-85ba-6a8d915e7893', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-1478-775d-af81-1a664aec861e', 'authenticated'),
  ('019d130d-14b7-702a-a6e6-c48d3106bb04', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-1478-775d-af81-1a664aec861e', 'anonymous'),
  ('019d130d-154f-7745-8770-8eb6c8d4e83b', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-153a-70ed-b43a-a6a92517f8dc', 'administrator'),
  ('019d130d-1565-752c-9377-f99745fc6435', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-153a-70ed-b43a-a6a92517f8dc', 'authenticated'),
  ('019d130d-157b-7dfa-81a1-1e9160e43339', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-153a-70ed-b43a-a6a92517f8dc', 'anonymous'),
  ('019d130d-2072-765d-b1ba-a0ecc3cda104', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-2060-7e0f-9f3e-6ea1df8c604b', 'administrator'),
  ('019d130d-208a-754f-9eed-58764ce45c98', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-2060-7e0f-9f3e-6ea1df8c604b', 'authenticated'),
  ('019d130d-20a0-7469-896e-c12e3a6f6814', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-2060-7e0f-9f3e-6ea1df8c604b', 'anonymous'),
  ('019d130d-2132-79c1-992b-5d9107e6ed2b', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-211b-70f3-b2e9-5bcd1fdefeb8', 'administrator'),
  ('019d130d-2149-7d07-b023-a189b77dad3b', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-211b-70f3-b2e9-5bcd1fdefeb8', 'authenticated'),
  ('019d130d-2161-7701-8e72-00c02fc953b2', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-211b-70f3-b2e9-5bcd1fdefeb8', 'anonymous'),
  ('019d130d-8d99-7469-99c8-1136ec9bbe3c', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-8d84-77d5-b268-d3e423c44bbd', 'administrator'),
  ('019d130d-8db2-73bf-867a-c2cf2c0e2fdc', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-8d84-77d5-b268-d3e423c44bbd', 'authenticated'),
  ('019d130d-8dca-75c4-80d5-93ab500b4b71', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-8d84-77d5-b268-d3e423c44bbd', 'anonymous'),
  ('019d130d-9121-78c6-b520-ee74a84d71d2', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-9107-7123-9c95-a9fa142077c3', 'administrator'),
  ('019d130d-913a-7d52-ba9d-f6bf7a3239ad', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-9107-7123-9c95-a9fa142077c3', 'authenticated'),
  ('019d130d-9153-7010-a727-162615a8e439', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-9107-7123-9c95-a9fa142077c3', 'anonymous'),
  ('019d130d-a244-75e0-9632-0f314fe4a811', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-a22e-7c6f-be54-3753f85ecb70', 'administrator'),
  ('019d130d-a25e-7b2c-8ee8-b6e705706c19', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-a22e-7c6f-be54-3753f85ecb70', 'authenticated'),
  ('019d130d-a27a-7c46-98e1-7180b7785bf9', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-a22e-7c6f-be54-3753f85ecb70', 'anonymous'),
  ('019d130d-a6c7-7d7c-b84b-1bfa506db770', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-a6b2-7851-9ce6-4522683de589', 'administrator'),
  ('019d130d-a6e0-7d06-8337-099f8bbc8ad8', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-a6b2-7851-9ce6-4522683de589', 'authenticated'),
  ('019d130d-a6fa-7a1e-a850-2b06a9711739', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-a6b2-7851-9ce6-4522683de589', 'anonymous'),
  ('019d130d-a82f-7e0c-a596-95a25dae006a', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-a816-7411-a7a6-8f45bce99505', 'administrator'),
  ('019d130d-a84b-7cb3-9638-abd03131042b', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-a816-7411-a7a6-8f45bce99505', 'authenticated'),
  ('019d130d-a864-7ec3-aa90-e0b6256a8297', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-a816-7411-a7a6-8f45bce99505', 'anonymous'),
  ('019d130d-a921-70c8-9a81-132cabeabc04', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-a908-7ac6-b490-603417d4ece9', 'administrator'),
  ('019d130d-a93b-7092-977c-72f45b2e3c5c', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-a908-7ac6-b490-603417d4ece9', 'authenticated'),
  ('019d130d-a955-7c43-9a2e-25b4e09d63e4', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-a908-7ac6-b490-603417d4ece9', 'anonymous'),
  ('019d130d-b9e7-77aa-89ee-3eb35b9e16bc', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-b9cf-76bf-bc61-35da51b658dd', 'administrator'),
  ('019d130d-ba02-7197-a4a4-c7166ff6c02d', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-b9cf-76bf-bc61-35da51b658dd', 'authenticated'),
  ('019d130d-ba1b-73a1-b37b-e1a4d8e00ea8', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-b9cf-76bf-bc61-35da51b658dd', 'anonymous'),
  ('019d130d-badb-7ec6-aafc-e46bcb65d2cd', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-bac1-7e50-8f1c-ef65689ef1b2', 'administrator'),
  ('019d130d-baf6-721f-ad46-9da96d7ab69e', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-bac1-7e50-8f1c-ef65689ef1b2', 'authenticated'),
  ('019d130d-bb0f-713e-b12f-3facb710a7f7', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-bac1-7e50-8f1c-ef65689ef1b2', 'anonymous'),
  ('019d130d-d249-725d-ba20-ec932c9731d6', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-d231-7344-851f-bb0c26d82f4b', 'administrator'),
  ('019d130d-d264-7d7e-8ff4-36e3c3e60808', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-d231-7344-851f-bb0c26d82f4b', 'authenticated'),
  ('019d130d-d27e-7b8e-9a70-7bd3d65f7051', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-d231-7344-851f-bb0c26d82f4b', 'anonymous');


SET session_replication_role TO DEFAULT;


