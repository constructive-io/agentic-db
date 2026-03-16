-- Deploy: schemas/agent_db_app_public/tables/expenses/columns/is_recurring/alterations/alt0000002227
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/expenses/table
-- requires: schemas/agent_db_app_public/tables/expenses/columns/receipt_url/column
-- requires: schemas/agent_db_app_public/tables/expenses/columns/is_recurring/column



ALTER TABLE "agent_db_app_public".expenses 
    ALTER COLUMN is_recurring SET DEFAULT false;

