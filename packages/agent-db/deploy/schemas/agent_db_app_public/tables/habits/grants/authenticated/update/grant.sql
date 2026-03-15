-- Deploy: schemas/agent_db_app_public/tables/habits/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habits/table
-- requires: schemas/agent_db_app_public/tables/reminders/columns/embedding/column


GRANT UPDATE ON "agent_db_app_public".habits TO authenticated;

