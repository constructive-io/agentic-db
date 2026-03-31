-- Revert: schemas/agentic_db_app_public/tables/activity_logs/columns/created_at/column


ALTER TABLE "agentic_db_app_public".activity_logs 
  DROP COLUMN created_at RESTRICT;


