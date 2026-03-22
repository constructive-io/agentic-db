-- Deploy: schemas/agentic_db_app_public/tables/deals/columns/currency/alterations/alt0000005570
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals/table
-- requires: schemas/agentic_db_app_public/tables/deals/columns/value/column
-- requires: schemas/agentic_db_app_public/tables/deals/columns/currency/column



ALTER TABLE agentic_db_app_public.deals 
    ALTER COLUMN currency SET DEFAULT 'USD';

