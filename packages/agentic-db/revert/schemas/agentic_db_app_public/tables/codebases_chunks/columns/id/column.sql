-- Revert: schemas/agentic_db_app_public/tables/codebases_chunks/columns/id/column


ALTER TABLE agentic_db_app_public.codebases_chunks 
  DROP COLUMN id RESTRICT;


