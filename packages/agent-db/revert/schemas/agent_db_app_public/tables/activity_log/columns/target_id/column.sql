-- Revert: schemas/agent_db_app_public/tables/activity_log/columns/target_id/column


ALTER TABLE "agent_db_app_public".activity_log 
  DROP COLUMN target_id RESTRICT;


