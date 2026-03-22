-- Deploy: schemas/agentic_db_app_public/tables/trips/columns/currency/alterations/alt0000001603
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips/table
-- requires: schemas/agentic_db_app_public/tables/trips/columns/budget/column
-- requires: schemas/agentic_db_app_public/tables/trips/columns/currency/column



ALTER TABLE "agentic_db_app_public".trips 
    ALTER COLUMN currency SET DEFAULT 'USD';

