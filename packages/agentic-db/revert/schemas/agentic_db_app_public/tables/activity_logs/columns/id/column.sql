-- Revert: schemas/agentic_db_app_public/tables/activity_logs/columns/id/column


ALTER TABLE "agentic_db_app_public".activity_logs 
  DROP COLUMN id RESTRICT;


