-- Revert: schemas/agentic_db_app_public/tables/email_threads/columns/updated_at/alterations/alt0000001791


ALTER TABLE "agentic_db_app_public".email_threads 
  ALTER COLUMN updated_at DROP NOT NULL;


