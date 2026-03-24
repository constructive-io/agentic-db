-- Deploy: schemas/agentic_db_app_public/tables/companies/columns/embedding_stale/alterations/alt0000002219
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies/table
-- requires: schemas/agentic_db_app_public/tables/companies/columns/embedding_stale/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE agentic_db_app_public.companies 
  ALTER COLUMN embedding_stale SET NOT NULL;

