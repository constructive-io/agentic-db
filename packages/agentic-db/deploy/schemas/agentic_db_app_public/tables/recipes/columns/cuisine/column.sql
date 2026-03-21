-- Deploy: schemas/agentic_db_app_public/tables/recipes/columns/cuisine/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/recipes/table
-- requires: schemas/agentic_db_app_public/tables/recipes/columns/description/column


ALTER TABLE agentic_db_app_public.recipes 
  ADD COLUMN cuisine text;

