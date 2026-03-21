-- Revert: schemas/agentic_db_app_public/tables/recipes/columns/entity_id/alterations/alt0000004635


ALTER TABLE agentic_db_app_public.recipes 
  ALTER COLUMN entity_id DROP NOT NULL;


