-- Revert: schemas/agent_db_status_public/tables/app_achievements/columns/name/column


ALTER TABLE "agent_db_status_public".app_achievements 
  DROP COLUMN name RESTRICT;


