-- Revert: schemas/agentic_db_app_public/tables/activity_log_chunks/columns/id/alterations/alt0000002345


ALTER TABLE "agentic_db_app_public".activity_log_chunks 
  ALTER COLUMN id DROP NOT NULL;


