-- Deploy: schemas/agent_db_app_public/tables/repositories/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/repositories/table
-- requires: schemas/agent_db_app_public/tables/milestones/constraints/milestones_project_id_fkey/constraint


GRANT INSERT ON agent_db_app_public.repositories TO authenticated;

