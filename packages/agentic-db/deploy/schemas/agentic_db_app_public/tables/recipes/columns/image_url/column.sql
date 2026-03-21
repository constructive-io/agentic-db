-- Deploy: schemas/agentic_db_app_public/tables/recipes/columns/image_url/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/recipes/table
-- requires: schemas/agentic_db_app_public/tables/recipes/columns/source_url/column


ALTER TABLE agentic_db_app_public.recipes 
  ADD COLUMN image_url text;

