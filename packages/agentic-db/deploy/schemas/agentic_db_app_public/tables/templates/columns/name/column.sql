-- Deploy: schemas/agentic_db_app_public/tables/templates/columns/name/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/templates/table
-- requires: schemas/agentic_db_app_public/tables/templates/columns/updated_at/alterations/alt0000002662


ALTER TABLE "agentic_db_app_public".templates 
  ADD COLUMN name text;

