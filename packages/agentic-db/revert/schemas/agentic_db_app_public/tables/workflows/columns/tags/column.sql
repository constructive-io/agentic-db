-- Revert: schemas/agentic_db_app_public/tables/workflows/columns/tags/column


ALTER TABLE agentic_db_app_public.workflows 
  DROP COLUMN tags RESTRICT;


