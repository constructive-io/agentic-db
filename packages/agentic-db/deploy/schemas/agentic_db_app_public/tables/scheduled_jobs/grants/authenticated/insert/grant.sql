-- Deploy: schemas/agentic_db_app_public/tables/scheduled_jobs/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/scheduled_jobs/table
-- requires: schemas/agentic_db_app_public/tables/processes/columns/logs_path/column


GRANT INSERT ON "agentic_db_app_public".scheduled_jobs TO authenticated;

