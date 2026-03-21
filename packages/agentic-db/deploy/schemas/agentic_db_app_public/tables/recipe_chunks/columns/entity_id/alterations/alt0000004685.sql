-- Deploy: schemas/agentic_db_app_public/tables/recipe_chunks/columns/entity_id/alterations/alt0000004685
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/recipe_chunks/table
-- requires: schemas/agentic_db_app_public/tables/list_chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/recipe_chunks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.recipe_chunks 
  ALTER COLUMN entity_id SET NOT NULL;

