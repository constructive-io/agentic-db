-- Revert: schemas/agentic_db_app_public/tables/tools/columns/tags/column


ALTER TABLE agentic_db_app_public.tools 
  DROP COLUMN tags RESTRICT;


