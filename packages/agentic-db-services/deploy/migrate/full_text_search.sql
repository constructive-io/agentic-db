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
  ('019d0ffe-51bd-79e3-90f1-8ac07e204313', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-509c-7e69-b073-260da2d7f651', '019d0ffe-51ac-76e6-a81c-ad4eb64f2489', '{019d0ffe-512e-796f-a3dd-adf06e39c395,019d0ffe-5170-7764-a110-3d21b5f97dc3}', '{A,B}', '{pg_catalog.simple,pg_catalog.simple}'),
  ('01113b12-6cbb-98c8-202b-0a9fada6e19a', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '7b3d0fb7-b3a3-23b6-7ee2-d68565e5e66b', '6cc86830-c20c-4b66-20d0-e7f205c0301f', '{d9e98f8a-b691-9081-2aed-1cbdc5bb7ba3,5152195a-df84-b36b-8c20-227d355a3ace,3e868978-c8b9-2097-f8ec-4a58540747bc,32a2fe93-1763-d7dc-647d-ed3f659031f6}', '{A,A,B,C}', '{english,english,english,english}'),
  ('efcb1261-0ae2-a731-896b-0a99bb1b6f51', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '01d3aadf-533c-bbe1-9620-83bd419b4bdc', '9e44c38a-8d35-e062-14e2-359ec348c81d', '{ce2f3447-e877-75a7-da76-8d5052b6d75d,d03e11e7-f6a8-c150-c701-085cb9c8752d,361dcda4-cde6-6fb9-476e-80714fbfe051}', '{A,B,C}', '{english,english,english}'),
  ('f7b94d0b-7318-60b0-206c-5de7455de27f', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '4443ff29-b4e3-c288-df72-696b9078881e', 'e58ecd68-8df0-84c2-5734-793f97b2452a', '{1d151fcd-4880-c5f4-9285-bc539e2556d8,acffe496-ca26-cc65-9fb0-997d5bef9d05,88350144-1554-6378-c96f-207628123689}', '{A,B,C}', '{english,english,english}'),
  ('4dbfa8ba-afc9-cb23-405a-db552f5a3fbf', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'a1776bf4-7c3d-3c15-fd6d-28a492b89fa1', 'af86251a-b475-83e7-7dac-313d6532f7c4', '{3bb990f5-54e3-6035-1263-a09e2dd9a451,044dbcc0-5515-aa9d-6f7c-65a3c5b73256,0588f491-42f4-3ef9-627f-fb930e9f82f9}', '{A,B,C}', '{english,english,english}'),
  ('66900c79-71d3-bc0d-a8ac-df628600622c', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '75eafb68-4369-6fdf-481e-8c610f1eedc1', '816f526d-e64a-3168-fabe-72fb6cb2b9a0', '{f73b4897-0796-3a5e-a8e2-2cf633a193c6,3934a876-332b-2508-919f-d3054a3354d4}', '{A,B}', '{english,english}'),
  ('8827d74a-fd46-f55a-2e0d-56fc65bbb72f', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '71a6b33a-4814-a299-2624-c40fb2f3bb6b', '143316cb-37e4-0b07-493e-cc15699591e2', '{06be533e-851c-d975-eefd-06f12097892b,a0778979-7793-7948-21a3-a67e4c1365eb}', '{A,B}', '{english,english}');


SET session_replication_role TO DEFAULT;


