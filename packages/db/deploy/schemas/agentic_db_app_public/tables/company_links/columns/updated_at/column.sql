-- Deploy: schemas/agentic_db_app_public/tables/company_links/columns/updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_links/table
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE "agentic_db_app_public".company_links 
  ADD COLUMN updated_at timestamptz;

