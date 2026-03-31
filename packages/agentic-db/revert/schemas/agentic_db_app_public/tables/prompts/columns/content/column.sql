-- Revert: schemas/agentic_db_app_public/tables/prompts/columns/content/column


ALTER TABLE agentic_db_app_public.prompts 
  DROP COLUMN content RESTRICT;


