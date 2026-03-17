-- Deploy: schemas/agentic_db_app_public/tables/expenses/columns/currency/alterations/alt0000001374
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expenses/table
-- requires: schemas/agentic_db_app_public/tables/expenses/columns/amount/column
-- requires: schemas/agentic_db_app_public/tables/expenses/columns/currency/column



ALTER TABLE "agentic_db_app_public".expenses 
    ALTER COLUMN currency SET DEFAULT 'USD';

