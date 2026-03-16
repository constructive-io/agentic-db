-- Revert: schemas/agent_db_app_public/tables/activity_log/columns/data/column


ALTER TABLE "agent_db_app_public".activity_log 
  DROP COLUMN data RESTRICT;


