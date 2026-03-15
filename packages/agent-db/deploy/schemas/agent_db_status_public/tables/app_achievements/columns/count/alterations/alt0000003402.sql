-- Deploy: schemas/agent_db_status_public/tables/app_achievements/columns/count/alterations/alt0000003402
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_achievements/table
-- requires: schemas/agent_db_status_public/tables/app_achievements/columns/count/column



ALTER TABLE "agent_db_status_public".app_achievements 
    ALTER COLUMN count SET DEFAULT 0;

