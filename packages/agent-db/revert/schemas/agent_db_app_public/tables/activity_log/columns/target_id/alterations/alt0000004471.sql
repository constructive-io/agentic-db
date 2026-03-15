-- Revert: schemas/agent_db_app_public/tables/activity_log/columns/target_id/alterations/alt0000004471


ALTER TABLE "agent_db_app_public".activity_log 
  ALTER COLUMN target_id DROP NOT NULL;


