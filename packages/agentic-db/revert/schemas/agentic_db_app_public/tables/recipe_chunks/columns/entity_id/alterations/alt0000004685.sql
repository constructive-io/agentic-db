-- Revert: schemas/agentic_db_app_public/tables/recipe_chunks/columns/entity_id/alterations/alt0000004685


ALTER TABLE agentic_db_app_public.recipe_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


