-- Revert: schemas/agentic_db_app_public/tables/prompts/columns/name/column


ALTER TABLE agentic_db_app_public.prompts 
  DROP COLUMN name RESTRICT;


