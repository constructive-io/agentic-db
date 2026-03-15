-- Deploy: schemas/agent_db_app_public/tables/expenses/columns/amount/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/expenses/table
-- requires: schemas/agent_db_app_public/tables/expenses/columns/updated_at/alterations/alt0000001407


ALTER TABLE agent_db_app_public.expenses 
  ADD COLUMN amount numeric;

