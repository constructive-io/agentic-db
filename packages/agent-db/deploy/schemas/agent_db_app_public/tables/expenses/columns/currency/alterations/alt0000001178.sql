-- Deploy: schemas/agent_db_app_public/tables/expenses/columns/currency/alterations/alt0000001178
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/expenses/table
-- requires: schemas/agent_db_app_public/tables/expenses/columns/amount/column
-- requires: schemas/agent_db_app_public/tables/expenses/columns/currency/column



ALTER TABLE agent_db_app_public.expenses 
    ALTER COLUMN currency SET DEFAULT 'USD';

