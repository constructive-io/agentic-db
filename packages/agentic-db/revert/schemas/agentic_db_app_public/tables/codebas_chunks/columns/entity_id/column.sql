-- Revert: schemas/agentic_db_app_public/tables/codebas_chunks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.codebas_chunks 
  DROP COLUMN entity_id RESTRICT;


