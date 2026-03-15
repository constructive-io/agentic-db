-- Revert: schemas/agent_db_status_public/tables/app_achievements/columns/name/alterations/alt0000003351


ALTER TABLE "agent_db_status_public".app_achievements 
  ALTER COLUMN name DROP NOT NULL;


