-- Revert: schemas/agentic_db_app_public/tables/interactions/columns/tags/column


ALTER TABLE agentic_db_app_public.interactions 
  DROP COLUMN tags RESTRICT;


