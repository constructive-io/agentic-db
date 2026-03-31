-- Deploy: schemas/agentic_db_app_public/tables/deals_chunks/columns/updated_at/alterations/alt0000003050
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals_chunks/table
-- requires: schemas/agentic_db_app_public/tables/deals_chunks/columns/updated_at/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE agentic_db_app_public.deals_chunks 
  ALTER COLUMN updated_at SET DEFAULT now();

