-- Deploy: schemas/agentic_db_app_public/tables/template_chunks/columns/entity_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/template_chunks/table
-- requires: schemas/agentic_db_app_public/tables/recipe_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.template_chunks 
  ADD COLUMN entity_id uuid;

