-- Revert: schemas/agentic_db_app_public/tables/activity_log_chunks/columns/updated_at/alterations/alt0000002350


ALTER TABLE "agentic_db_app_public".activity_log_chunks 
  ALTER COLUMN updated_at DROP NOT NULL;


