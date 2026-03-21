-- Revert: schemas/agentic_db_app_public/tables/repositories/columns/tags/column


ALTER TABLE agentic_db_app_public.repositories 
  DROP COLUMN tags RESTRICT;


