-- Deploy: schemas/agentic_db_app_public/tables/habits/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits/table
-- requires: schemas/agentic_db_app_public/tables/reminders/columns/embedding/column


GRANT UPDATE ON agentic_db_app_public.habits TO authenticated;

