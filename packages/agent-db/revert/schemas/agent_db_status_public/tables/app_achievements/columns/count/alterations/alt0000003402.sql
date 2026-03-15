-- Revert: schemas/agent_db_status_public/tables/app_achievements/columns/count/alterations/alt0000003402




ALTER TABLE "agent_db_status_public".app_achievements 
    ALTER COLUMN count DROP DEFAULT;



