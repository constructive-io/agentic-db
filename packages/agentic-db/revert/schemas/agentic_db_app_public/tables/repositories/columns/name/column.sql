-- Revert: schemas/agentic_db_app_public/tables/repositories/columns/name/column


ALTER TABLE agentic_db_app_public.repositories 
  DROP COLUMN name RESTRICT;


