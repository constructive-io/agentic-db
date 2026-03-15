-- Revert: schemas/agent_db_app_public/tables/activity_log/columns/action/alterations/alt0000004469


ALTER TABLE "agent_db_app_public".activity_log 
  ALTER COLUMN action DROP NOT NULL;


