-- Revert: schemas/agent_db_app_public/tables/activity_log/columns/id/alterations/alt0000002112


ALTER TABLE "agent_db_app_public".activity_log 
  ALTER COLUMN id DROP NOT NULL;


