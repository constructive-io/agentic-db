-- Deploy: schemas/agentic_db_app_public/tables/companies_chunks/columns/companies_id/alterations/alt0000005251
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies_chunks/table
-- requires: schemas/agentic_db_app_public/tables/companies_chunks/columns/companies_id/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE agentic_db_app_public.companies_chunks 
  ALTER COLUMN companies_id SET NOT NULL;

