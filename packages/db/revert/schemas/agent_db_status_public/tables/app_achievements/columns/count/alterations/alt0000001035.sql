-- Revert: schemas/agent_db_status_public/tables/app_achievements/columns/count/alterations/alt0000001035


ALTER TABLE "agent_db_status_public".app_achievements 
  ALTER COLUMN count DROP NOT NULL;


