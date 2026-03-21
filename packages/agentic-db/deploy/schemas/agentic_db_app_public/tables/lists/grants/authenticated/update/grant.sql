-- Deploy: schemas/agentic_db_app_public/tables/lists/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/lists/table
-- requires: schemas/agentic_db_app_public/tables/habit_logs/columns/tags/column


GRANT UPDATE ON agentic_db_app_public.lists TO authenticated;

