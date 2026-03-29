-- Deploy: schemas/agentic_db_app_public/tables/notes/alterations/alt0000005144
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE agentic_db_app_public.notes 
  DISABLE ROW LEVEL SECURITY;

