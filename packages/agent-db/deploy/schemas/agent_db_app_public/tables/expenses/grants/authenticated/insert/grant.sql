-- Deploy: schemas/agent_db_app_public/tables/expenses/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/expenses/table
-- requires: schemas/agent_db_app_public/tables/calendar_events/columns/embedding/column


GRANT INSERT ON "agent_db_app_public".expenses TO authenticated;

