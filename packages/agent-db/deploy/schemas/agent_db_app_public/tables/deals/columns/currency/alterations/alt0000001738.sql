-- Deploy: schemas/agent_db_app_public/tables/deals/columns/currency/alterations/alt0000001738
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/deals/table
-- requires: schemas/agent_db_app_public/tables/deals/columns/value/column
-- requires: schemas/agent_db_app_public/tables/deals/columns/currency/column



ALTER TABLE "agent_db_app_public".deals 
    ALTER COLUMN currency SET DEFAULT 'USD';

