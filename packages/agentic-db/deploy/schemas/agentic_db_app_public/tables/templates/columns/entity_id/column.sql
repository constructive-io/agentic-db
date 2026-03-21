-- Deploy: schemas/agentic_db_app_public/tables/templates/columns/entity_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/templates/table
-- requires: schemas/agentic_db_app_public/tables/recipes/columns/embedding/column


ALTER TABLE "agentic_db_app_public".templates 
  ADD COLUMN entity_id uuid;

