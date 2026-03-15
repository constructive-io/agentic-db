-- Revert: schemas/agent_db_app_public/tables/activity_log/columns/id/column


ALTER TABLE "agent_db_app_public".activity_log 
  DROP COLUMN id RESTRICT;


