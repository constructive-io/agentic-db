-- Revert: schemas/agentic_db_app_public/tables/activity_logs/columns/updated_at/alterations/alt0000001702


ALTER TABLE "agentic_db_app_public".activity_logs 
  ALTER COLUMN updated_at DROP NOT NULL;


