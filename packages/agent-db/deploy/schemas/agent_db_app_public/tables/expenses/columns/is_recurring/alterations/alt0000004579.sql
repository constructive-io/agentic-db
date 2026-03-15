-- Deploy: schemas/agent_db_app_public/tables/expenses/columns/is_recurring/alterations/alt0000004579
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/expenses/table
-- requires: schemas/agent_db_app_public/tables/expenses/columns/receipt_url/column
-- requires: schemas/agent_db_app_public/tables/expenses/columns/is_recurring/column



ALTER TABLE "agent_db_app_public".expenses 
    ALTER COLUMN is_recurring SET DEFAULT false;

