-- Revert: schemas/agentic_db_app_public/tables/activity_log/columns/data/column


ALTER TABLE "agentic_db_app_public".activity_log 
  DROP COLUMN data RESTRICT;


