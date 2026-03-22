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
  ('019d1736-5c09-7c49-bb06-4905799f6a12', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-5b0d-7766-9f99-3cf518199163', '019d1736-5bfa-7c1c-ba54-d34398b84c49', '{019d1736-5b86-7de1-9cb7-798d76acba87,019d1736-5bc5-71a7-ba41-92c94ee9138b}', '{A,B}', '{pg_catalog.simple,pg_catalog.simple}'),
  ('019d1738-f18e-7a2b-9ad8-a6e41ddc5960', '019d1736-587a-73df-addd-59801f8d68ca', '019d1738-ee12-7125-acd8-81dea8586448', '019d1738-f168-7c00-95a6-37a1c1a210a9', '{019d1738-eebf-765e-aecf-3f701a332616,019d1738-eee3-701a-b9e4-8168a9add850,019d1738-ef14-7db8-864a-c34796ff48ec,019d1738-ef25-7ff3-93da-2bcb602c8f3a}', '{A,A,B,C}', '{english,english,english,english}'),
  ('019d1738-f53a-732a-8953-4c202ad6e3c2', '019d1736-587a-73df-addd-59801f8d68ca', '019d1738-f2d6-7299-96c0-c08bbe9a1060', '019d1738-f518-7732-92eb-51fd156a28e4', '{019d1738-f379-7fa3-ade4-7df548cecdac,019d1738-f3bd-772f-93dd-171d7a5ea890,019d1738-f3ad-74d5-84d0-5dc5c88aab45}', '{A,B,C}', '{english,english,english}'),
  ('019d1738-fc07-72bb-87eb-cd4cb79a2f9c', '019d1736-587a-73df-addd-59801f8d68ca', '019d1738-f94d-754c-b403-116814399fae', '019d1738-fbe1-7ea6-807c-7e743db10547', '{019d1738-fa13-704b-b815-50a420af8c9c,019d1738-fa8a-7ce1-84f4-7349b4159c0a,019d1738-fa48-709c-bf00-9775168e04ce}', '{A,B,C}', '{english,english,english}'),
  ('019d1739-001a-770c-a9c6-7dc8bbfa7da1', '019d1736-587a-73df-addd-59801f8d68ca', '019d1738-fd14-75be-8492-3fee727504b1', '019d1738-fff4-7caa-9163-aaf4e498072b', '{019d1738-fdcf-723e-8803-4a5abac3cd92,019d1738-fe93-7edb-82f6-58b0bc8a8b6f,019d1738-fe05-7677-8f48-78f75c7177cc}', '{A,B,C}', '{english,english,english}');


SET session_replication_role TO DEFAULT;


