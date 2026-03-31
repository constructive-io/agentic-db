-- Revert: schemas/agentic_db_app_public/tables/activity_logs/columns/id/alterations/alt0000001695


ALTER TABLE "agentic_db_app_public".activity_logs 
  ALTER COLUMN id DROP NOT NULL;


