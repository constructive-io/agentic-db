-- Revert: schemas/agent_db_status_public/tables/app_achievements/columns/updated_at/column


ALTER TABLE "agent_db_status_public".app_achievements 
  DROP COLUMN updated_at RESTRICT;


