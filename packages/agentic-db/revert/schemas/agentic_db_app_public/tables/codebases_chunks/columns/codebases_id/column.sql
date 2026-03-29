-- Revert: schemas/agentic_db_app_public/tables/codebases_chunks/columns/codebases_id/column


ALTER TABLE agentic_db_app_public.codebases_chunks 
  DROP COLUMN codebases_id RESTRICT;


