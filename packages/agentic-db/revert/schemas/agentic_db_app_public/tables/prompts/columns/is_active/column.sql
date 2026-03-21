-- Revert: schemas/agentic_db_app_public/tables/prompts/columns/is_active/column


ALTER TABLE agentic_db_app_public.prompts 
  DROP COLUMN is_active RESTRICT;


