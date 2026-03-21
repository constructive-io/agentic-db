-- Revert: schemas/agentic_db_app_public/tables/repositories/columns/default_branch/column


ALTER TABLE agentic_db_app_public.repositories 
  DROP COLUMN default_branch RESTRICT;


