-- Deploy: schemas/agentic_db_app_public/tables/blueprints/columns/title/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/blueprints/table
-- requires: schemas/agentic_db_app_public/tables/blueprints/columns/updated_at/alterations/alt0000002166


ALTER TABLE "agentic_db_app_public".blueprints 
  ADD COLUMN title text;

