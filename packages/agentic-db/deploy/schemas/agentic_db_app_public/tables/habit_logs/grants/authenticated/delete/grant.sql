-- Deploy: schemas/agentic_db_app_public/tables/habit_logs/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habit_logs/table
-- requires: schemas/agentic_db_app_public/tables/habits/columns/tags/column


GRANT DELETE ON agentic_db_app_public.habit_logs TO authenticated;

