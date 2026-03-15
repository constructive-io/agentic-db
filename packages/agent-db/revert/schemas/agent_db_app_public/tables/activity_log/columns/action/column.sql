-- Revert: schemas/agent_db_app_public/tables/activity_log/columns/action/column


ALTER TABLE "agent_db_app_public".activity_log 
  DROP COLUMN action RESTRICT;


