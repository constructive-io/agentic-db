-- Revert: schemas/agentic_db_app_public/tables/repository_chunks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.repository_chunks 
  DROP COLUMN entity_id RESTRICT;


