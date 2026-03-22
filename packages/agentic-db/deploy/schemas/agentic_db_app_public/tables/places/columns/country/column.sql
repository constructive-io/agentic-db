-- Deploy: schemas/agentic_db_app_public/tables/places/columns/country/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/places/table
-- requires: schemas/agentic_db_app_public/tables/places/columns/city/column


ALTER TABLE "agentic_db_app_public".places 
  ADD COLUMN country text;

