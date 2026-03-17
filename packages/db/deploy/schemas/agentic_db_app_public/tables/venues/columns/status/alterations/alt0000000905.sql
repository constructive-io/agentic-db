-- Deploy: schemas/agentic_db_app_public/tables/venues/columns/status/alterations/alt0000000905
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_app_public/tables/venues/columns/status/column
-- requires: schemas/agentic_db_app_public/tables/venues/columns/category/column



ALTER TABLE "agentic_db_app_public".venues 
    ALTER COLUMN status SET DEFAULT 'potential';

