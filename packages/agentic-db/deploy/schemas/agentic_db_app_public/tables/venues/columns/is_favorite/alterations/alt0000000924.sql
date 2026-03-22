-- Deploy: schemas/agentic_db_app_public/tables/venues/columns/is_favorite/alterations/alt0000000924
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_app_public/tables/venues/columns/is_favorite/column
-- requires: schemas/agentic_db_app_public/tables/venues/columns/price_level/column



ALTER TABLE "agentic_db_app_public".venues 
    ALTER COLUMN is_favorite SET DEFAULT false;

