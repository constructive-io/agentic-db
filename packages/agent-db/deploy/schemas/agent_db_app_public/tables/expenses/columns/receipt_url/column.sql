-- Deploy: schemas/agent_db_app_public/tables/expenses/columns/receipt_url/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/expenses/table
-- requires: schemas/agent_db_app_public/tables/expenses/columns/merchant/column


ALTER TABLE agent_db_app_public.expenses 
  ADD COLUMN receipt_url text;

