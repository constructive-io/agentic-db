-- Deploy: schemas/agent_db_status_public/tables/app_achievements/columns/id/alterations/alt0000001030
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_achievements/table
-- requires: schemas/agent_db_status_public/tables/app_achievements/columns/id/column



ALTER TABLE "agent_db_status_public".app_achievements 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

