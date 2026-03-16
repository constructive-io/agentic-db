-- Revert: schemas/agent_db_app_public/tables/activity_log/columns/activity_type/alterations/alt0000002119


ALTER TABLE "agent_db_app_public".activity_log 
  ALTER COLUMN activity_type DROP NOT NULL;


