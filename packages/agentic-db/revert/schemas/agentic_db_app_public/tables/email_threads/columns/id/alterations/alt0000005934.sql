-- Revert: schemas/agentic_db_app_public/tables/email_threads/columns/id/alterations/alt0000005934


ALTER TABLE agentic_db_app_public.email_threads 
  ALTER COLUMN id DROP NOT NULL;


