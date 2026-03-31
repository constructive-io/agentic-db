-- Revert: schemas/agentic_db_app_public/tables/email_threads_chunks/columns/metadata/column


ALTER TABLE agentic_db_app_public.email_threads_chunks 
  DROP COLUMN metadata RESTRICT;


