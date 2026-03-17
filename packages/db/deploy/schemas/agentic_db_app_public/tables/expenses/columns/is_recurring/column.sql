-- Deploy: schemas/agentic_db_app_public/tables/expenses/columns/is_recurring/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expenses/table
-- requires: schemas/agentic_db_app_public/tables/expenses/columns/receipt_url/column


ALTER TABLE "agentic_db_app_public".expenses 
  ADD COLUMN is_recurring bool;

