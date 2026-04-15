-- Revert: schemas/agentic_db_app_public/tables/email_threads/columns/created_at/column


ALTER TABLE agentic_db_app_public.email_threads 
  DROP COLUMN created_at RESTRICT;


