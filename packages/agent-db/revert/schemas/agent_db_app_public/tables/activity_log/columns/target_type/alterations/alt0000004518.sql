-- Revert: schemas/agent_db_app_public/tables/activity_log/columns/target_type/alterations/alt0000004518


ALTER TABLE "agent_db_app_public".activity_log 
  ALTER COLUMN target_type DROP NOT NULL;


