-- Deploy: schemas/agentic_db_app_public/tables/notes/columns/content/alterations/alt0000010482
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table
-- requires: schemas/agentic_db_app_public/tables/notes/columns/content/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE agentic_db_app_public.notes 
  ALTER COLUMN content SET NOT NULL;

