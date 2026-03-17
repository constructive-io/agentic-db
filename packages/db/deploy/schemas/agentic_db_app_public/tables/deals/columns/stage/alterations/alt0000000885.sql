-- Deploy: schemas/agentic_db_app_public/tables/deals/columns/stage/alterations/alt0000000885
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals/table
-- requires: schemas/agentic_db_app_public/tables/deals/columns/stage/column
-- requires: schemas/agentic_db_app_public/tables/deals/columns/name/alterations/alt0000000884



ALTER TABLE "agentic_db_app_public".deals 
    ALTER COLUMN stage SET DEFAULT 'lead';

