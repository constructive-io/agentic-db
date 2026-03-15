-- Deploy: schemas/agent_db_app_public/tables/deals/columns/currency/alterations/alt0000004056
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/deals/table
-- requires: schemas/agent_db_app_public/tables/deals/columns/value/column
-- requires: schemas/agent_db_app_public/tables/deals/columns/currency/column



ALTER TABLE "agent_db_app_public".deals 
    ALTER COLUMN currency SET DEFAULT 'USD';

