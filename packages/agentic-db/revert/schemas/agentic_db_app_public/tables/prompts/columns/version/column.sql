-- Revert: schemas/agentic_db_app_public/tables/prompts/columns/version/column


ALTER TABLE agentic_db_app_public.prompts 
  DROP COLUMN version RESTRICT;


