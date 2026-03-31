-- Deploy: migrate/api_schemas
-- made with <3 @ constructive.io

-- requires: migrate/api_modules


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

INSERT INTO services_public.api_schemas (
  id,
  database_id,
  schema_id,
  api_id
) VALUES
  ('019d42ff-c9bb-700e-b39d-4a0599b653f4', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-c76e-787a-a232-7e96af0b9d23', '019d42ff-c9b5-7825-b2c6-c5a17f45b14e'),
  ('019d42ff-c9bf-71a7-98ab-21210d2445f2', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-c76e-787a-a232-7e96af0b9d23', '019d42ff-c9b9-77f2-a938-da130d54ead9'),
  ('019d42ff-c9c0-725d-9276-76be7dba0c93', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-c770-7c4f-b7ff-e437cb7e8bb9', '019d42ff-c9b9-77f2-a938-da130d54ead9'),
  ('019d42ff-c9c0-7ef5-a339-9f2eecf8e34a', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-c89d-70bf-8fb8-f916c2f15a03', '019d42ff-c9ba-75f1-b0e4-f355bd253ab9'),
  ('019d42ff-ca5f-7a3e-81c8-1b1f58b3cbcb', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-c9cb-7479-8e4d-02c1f0985a66', '019d42ff-c9b5-7825-b2c6-c5a17f45b14e'),
  ('019d42ff-ca60-7a1d-a3b1-bbb72174cb9b', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-c9cb-7479-8e4d-02c1f0985a66', '019d42ff-c9b9-77f2-a938-da130d54ead9'),
  ('019d42ff-ca61-7658-920e-f3012fc9e242', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-c9cb-7479-8e4d-02c1f0985a66', '019d42ff-c9b9-7b66-a187-12ec7c1e2db4'),
  ('019d42ff-d154-79b4-8c3c-047747c5775e', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-d02d-7ebf-9746-bbce1fc5bbd0', '019d42ff-c9b5-7825-b2c6-c5a17f45b14e'),
  ('019d42ff-d155-7b83-bd25-d3d3bc6a590b', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-d02d-7ebf-9746-bbce1fc5bbd0', '019d42ff-c9b9-77f2-a938-da130d54ead9'),
  ('019d42ff-d156-72f4-8b7b-270fb9cde794', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-d02d-7ebf-9746-bbce1fc5bbd0', '019d42ff-c9b8-7ca2-b4d2-ce1666a77a2f'),
  ('019d42ff-d5ba-7d34-a745-a01fa389868c', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-d47f-7297-9cde-6e0a2f1e2c50', '019d42ff-c9b5-7825-b2c6-c5a17f45b14e'),
  ('019d42ff-d5bb-7fd5-aabb-83fe78297553', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-d47f-7297-9cde-6e0a2f1e2c50', '019d42ff-c9b9-77f2-a938-da130d54ead9'),
  ('019d42ff-d5bc-760f-9622-32852264c4ce', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-d47f-7297-9cde-6e0a2f1e2c50', '019d42ff-c9b8-7ca2-b4d2-ce1666a77a2f'),
  ('019d42ff-d93f-7b98-8b81-1f0f3e8093fa', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-ce03-722d-82bd-39b558050ea6', '019d42ff-c9b5-7825-b2c6-c5a17f45b14e'),
  ('019d42ff-d944-726b-84b7-ec98824f7b53', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-ce03-722d-82bd-39b558050ea6', '019d42ff-c9b9-77f2-a938-da130d54ead9'),
  ('019d42ff-d946-7694-baeb-6b63a0c02cd8', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-ce03-722d-82bd-39b558050ea6', '019d42ff-c9b8-7ca2-b4d2-ce1666a77a2f'),
  ('019d42ff-eab9-7060-ba33-d0fe63fcbc2b', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-e972-77d4-9058-8c13c0794f59', '019d42ff-c9b5-7825-b2c6-c5a17f45b14e'),
  ('019d42ff-eabb-7105-b50a-20ee88385419', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-e972-77d4-9058-8c13c0794f59', '019d42ff-c9b9-77f2-a938-da130d54ead9'),
  ('019d42ff-eabb-7a25-b24c-9474a135f23a', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-e972-77d4-9058-8c13c0794f59', '019d42ff-c9b8-7ca2-b4d2-ce1666a77a2f'),
  ('019d42ff-f5bb-7447-89e2-d07ed74370a7', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-f46d-7386-ae21-158ff8319f71', '019d42ff-c9b5-7825-b2c6-c5a17f45b14e'),
  ('019d42ff-f5bc-7ccc-b14a-c853ad19b6bc', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-f46d-7386-ae21-158ff8319f71', '019d42ff-c9b9-77f2-a938-da130d54ead9'),
  ('019d42ff-f5bd-77cf-bb38-47cc66a697d0', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-f46d-7386-ae21-158ff8319f71', '019d42ff-c9b8-7ca2-b4d2-ce1666a77a2f'),
  ('019d4300-6c0e-7968-b504-3631313b4fa0', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-6b30-7a8d-86cc-21bfca0a8064', '019d42ff-c9b5-7825-b2c6-c5a17f45b14e'),
  ('019d4300-6c10-7e80-a20a-bd23f270a8eb', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-6b30-7a8d-86cc-21bfca0a8064', '019d42ff-c9b9-77f2-a938-da130d54ead9'),
  ('019d4300-6c12-7697-84ea-ef1f433ef8fd', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-6b30-7a8d-86cc-21bfca0a8064', '019d42ff-c9b9-7b66-a187-12ec7c1e2db4'),
  ('019d4300-6e58-7f6e-bb22-116ab366c456', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-6c86-786a-b55f-0c75438df2a1', '019d42ff-c9b5-7825-b2c6-c5a17f45b14e'),
  ('019d4300-6e5b-77d9-9c9f-7b343f2c59f2', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-6c86-786a-b55f-0c75438df2a1', '019d42ff-c9b9-77f2-a938-da130d54ead9'),
  ('019d4300-6e5d-70a0-96f3-215f6633c846', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-6c86-786a-b55f-0c75438df2a1', '019d42ff-c9b9-7b66-a187-12ec7c1e2db4'),
  ('019d4300-7c9b-7393-a825-0627eaffe84c', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-7bb9-762e-9a1d-b999dea88b8d', '019d42ff-c9b5-7825-b2c6-c5a17f45b14e'),
  ('019d4300-7c9d-7e9e-ba34-ab8daad43b07', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-7bb9-762e-9a1d-b999dea88b8d', '019d42ff-c9b9-77f2-a938-da130d54ead9'),
  ('019d4300-7c9f-79df-8739-03fa61853915', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-7bb9-762e-9a1d-b999dea88b8d', '019d42ff-c9b8-7ca2-b4d2-ce1666a77a2f'),
  ('019d4300-94a9-7a89-9920-df6a4b9103d7', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-9354-7eea-809c-f12007613a9d', '019d42ff-c9b5-7825-b2c6-c5a17f45b14e'),
  ('019d4300-94ac-78e0-a5d9-a6628c77f3e0', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-9354-7eea-809c-f12007613a9d', '019d42ff-c9b9-77f2-a938-da130d54ead9'),
  ('019d4300-94ae-77a0-9a4b-823f5339ebc9', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-9354-7eea-809c-f12007613a9d', '019d42ff-c9b9-7b66-a187-12ec7c1e2db4');


SET session_replication_role TO DEFAULT;


