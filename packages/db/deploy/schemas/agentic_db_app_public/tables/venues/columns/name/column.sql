-- Deploy: schemas/agentic_db_app_public/tables/venues/columns/name/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_app_public/tables/venues/columns/updated_at/alterations/alt0000000903


ALTER TABLE "agentic_db_app_public".venues 
  ADD COLUMN name text;

