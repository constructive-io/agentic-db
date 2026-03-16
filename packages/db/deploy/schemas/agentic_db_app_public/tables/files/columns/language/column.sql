-- Deploy: schemas/agentic_db_app_public/tables/files/columns/language/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/files/table
-- requires: schemas/agentic_db_app_public/tables/files/columns/path/alterations/alt0000001318


ALTER TABLE "agentic_db_app_public".files 
  ADD COLUMN language text;

