-- Deploy: schemas/agentic_db_app_public/tables/blueprints/columns/steps/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/blueprints/table
-- requires: schemas/agentic_db_app_public/tables/blueprints/columns/title/alterations/alt0000002167


ALTER TABLE "agentic_db_app_public".blueprints 
  ADD COLUMN steps jsonb;

