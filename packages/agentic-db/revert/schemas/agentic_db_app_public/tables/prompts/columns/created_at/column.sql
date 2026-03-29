-- Revert: schemas/agentic_db_app_public/tables/prompts/columns/created_at/column


ALTER TABLE agentic_db_app_public.prompts 
  DROP COLUMN created_at RESTRICT;


