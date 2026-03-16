-- Deploy: schemas/agent_db_app_public/tables/scheduled_jobs/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/table
-- requires: schemas/agent_db_app_public/tables/processes/columns/logs_path/column


GRANT INSERT ON "agent_db_app_public".scheduled_jobs TO authenticated;

