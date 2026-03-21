-- Deploy: schemas/agentic_db_app_public/tables/deals/columns/stage/alterations/alt0000001729
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals/table
-- requires: schemas/agentic_db_app_public/tables/deals/columns/stage/column
-- requires: schemas/agentic_db_app_public/tables/deals/columns/name/alterations/alt0000001728



ALTER TABLE "agentic_db_app_public".deals 
    ALTER COLUMN stage SET DEFAULT 'lead';

