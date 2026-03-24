-- Deploy: schemas/agentic_db_app_public/tables/notes/columns/created_at/alterations/alt0000000991
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table
-- requires: schemas/agentic_db_app_public/tables/notes/columns/created_at/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE "agentic_db_app_public".notes 
  ALTER COLUMN created_at SET NOT NULL;

