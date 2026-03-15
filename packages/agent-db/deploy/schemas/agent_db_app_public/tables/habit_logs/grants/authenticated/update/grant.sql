-- Deploy: schemas/agent_db_app_public/tables/habit_logs/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habit_logs/table
-- requires: schemas/agent_db_app_public/tables/habits/columns/tags/column


GRANT UPDATE ON agent_db_app_public.habit_logs TO authenticated;

