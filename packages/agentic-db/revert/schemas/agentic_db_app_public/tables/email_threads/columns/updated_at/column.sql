-- Revert: schemas/agentic_db_app_public/tables/email_threads/columns/updated_at/column


ALTER TABLE agentic_db_app_public.email_threads 
  DROP COLUMN updated_at RESTRICT;


