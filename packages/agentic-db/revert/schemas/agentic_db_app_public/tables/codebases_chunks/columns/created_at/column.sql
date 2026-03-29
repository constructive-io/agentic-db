-- Revert: schemas/agentic_db_app_public/tables/codebases_chunks/columns/created_at/column


ALTER TABLE agentic_db_app_public.codebases_chunks 
  DROP COLUMN created_at RESTRICT;


