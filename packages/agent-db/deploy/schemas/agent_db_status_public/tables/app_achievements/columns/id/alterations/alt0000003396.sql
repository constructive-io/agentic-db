-- Deploy: schemas/agent_db_status_public/tables/app_achievements/columns/id/alterations/alt0000003396
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_achievements/table
-- requires: schemas/agent_db_status_public/tables/app_achievements/columns/id/column



ALTER TABLE "agent_db_status_public".app_achievements 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

