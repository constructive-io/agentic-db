-- Deploy: schemas/agent_db_app_public/tables/feedback/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/feedback/table
-- requires: schemas/agent_db_app_public/tables/skill_executions/columns/error/column


GRANT INSERT ON agent_db_app_public.feedback TO authenticated;

