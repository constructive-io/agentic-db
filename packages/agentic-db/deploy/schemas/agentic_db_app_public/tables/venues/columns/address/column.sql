-- Deploy: schemas/agentic_db_app_public/tables/venues/columns/address/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_app_public/tables/venues/columns/name/alterations/alt0000000922


ALTER TABLE "agentic_db_app_public".venues 
  ADD COLUMN address text;

