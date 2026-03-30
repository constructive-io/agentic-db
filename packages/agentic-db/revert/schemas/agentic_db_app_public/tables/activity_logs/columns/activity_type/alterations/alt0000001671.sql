-- Revert: schemas/agentic_db_app_public/tables/activity_logs/columns/activity_type/alterations/alt0000001671


ALTER TABLE "agentic_db_app_public".activity_logs 
  ALTER COLUMN activity_type DROP NOT NULL;


