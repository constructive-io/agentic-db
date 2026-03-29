-- Revert: schemas/agentic_db_app_public/tables/codebases_chunks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.codebases_chunks 
  DROP COLUMN entity_id RESTRICT;


