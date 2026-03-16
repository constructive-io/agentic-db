-- Deploy: schemas/agent_db_app_public/tables/habits/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habits/table
-- requires: schemas/agent_db_app_public/tables/reminders/columns/embedding/column


GRANT INSERT ON "agent_db_app_public".habits TO authenticated;

