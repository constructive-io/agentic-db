-- Deploy: schemas/agentic_db_app_public/tables/expenses/columns/receipt_url/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expenses/table
-- requires: schemas/agentic_db_app_public/tables/expenses/columns/merchant/column


ALTER TABLE agentic_db_app_public.expenses 
  ADD COLUMN receipt_url text;

