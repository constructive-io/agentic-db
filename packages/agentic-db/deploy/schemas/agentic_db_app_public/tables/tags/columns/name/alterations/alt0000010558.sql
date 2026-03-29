-- Deploy: schemas/agentic_db_app_public/tables/tags/columns/name/alterations/alt0000010558
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tags/table
-- requires: schemas/agentic_db_app_public/tables/tags/columns/name/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE agentic_db_app_public.tags 
  ALTER COLUMN name SET NOT NULL;

