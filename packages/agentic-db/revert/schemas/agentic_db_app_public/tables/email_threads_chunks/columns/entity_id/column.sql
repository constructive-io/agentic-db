-- Revert: schemas/agentic_db_app_public/tables/email_threads_chunks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.email_threads_chunks 
  DROP COLUMN entity_id RESTRICT;


