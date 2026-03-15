-- Deploy: schemas/agent_db_app_public/tables/scheduled_jobs/columns/id/alterations/alt0000004420
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/table
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/columns/id/column
-- requires: schemas/agent_db_app_public/tables/processes/columns/logs_path/column



ALTER TABLE "agent_db_app_public".scheduled_jobs 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

