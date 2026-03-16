-- Revert: schemas/agent_db_app_public/tables/activity_log/columns/updated_at/alterations/alt0000002117


ALTER TABLE "agent_db_app_public".activity_log 
  ALTER COLUMN updated_at DROP NOT NULL;


