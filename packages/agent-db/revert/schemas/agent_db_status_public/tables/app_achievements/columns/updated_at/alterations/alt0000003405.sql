-- Revert: schemas/agent_db_status_public/tables/app_achievements/columns/updated_at/alterations/alt0000003405


ALTER TABLE "agent_db_status_public".app_achievements 
  ALTER COLUMN updated_at DROP DEFAULT;


