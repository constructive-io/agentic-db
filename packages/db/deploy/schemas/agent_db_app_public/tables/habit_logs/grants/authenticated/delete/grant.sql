-- Deploy: schemas/agent_db_app_public/tables/habit_logs/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habit_logs/table
-- requires: schemas/agent_db_app_public/tables/habits/columns/tags/column


GRANT DELETE ON "agent_db_app_public".habit_logs TO authenticated;

