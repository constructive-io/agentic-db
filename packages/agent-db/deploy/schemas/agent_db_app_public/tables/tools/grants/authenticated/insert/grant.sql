-- Deploy: schemas/agent_db_app_public/tables/tools/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tools/table
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/columns/last_result/column


GRANT INSERT ON agent_db_app_public.tools TO authenticated;

