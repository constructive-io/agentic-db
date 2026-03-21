-- Revert: schemas/agentic_db_app_public/tables/threads/columns/entity_id/column


ALTER TABLE agentic_db_app_public.threads 
  DROP COLUMN entity_id RESTRICT;


