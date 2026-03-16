-- Deploy: schemas/agentic_db_app_public/tables/expenses/columns/is_recurring/alterations/alt0000001375
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expenses/table
-- requires: schemas/agentic_db_app_public/tables/expenses/columns/receipt_url/column
-- requires: schemas/agentic_db_app_public/tables/expenses/columns/is_recurring/column



ALTER TABLE "agentic_db_app_public".expenses 
    ALTER COLUMN is_recurring SET DEFAULT false;

