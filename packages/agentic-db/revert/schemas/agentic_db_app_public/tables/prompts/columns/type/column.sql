-- Revert: schemas/agentic_db_app_public/tables/prompts/columns/type/column


ALTER TABLE agentic_db_app_public.prompts 
  DROP COLUMN type RESTRICT;


