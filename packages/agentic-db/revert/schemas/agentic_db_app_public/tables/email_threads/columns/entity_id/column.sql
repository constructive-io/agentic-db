-- Revert: schemas/agentic_db_app_public/tables/email_threads/columns/entity_id/column


ALTER TABLE agentic_db_app_public.email_threads 
  DROP COLUMN entity_id RESTRICT;


