-- Revert: schemas/agent_db_status_public/tables/app_achievements/columns/id/column


ALTER TABLE "agent_db_status_public".app_achievements 
  DROP COLUMN id RESTRICT;


