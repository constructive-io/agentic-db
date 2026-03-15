-- Deploy: schemas/agent_db_app_public/tables/expenses/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/expenses/table
-- requires: schemas/agent_db_app_public/tables/calendar_events/columns/embedding/column


GRANT SELECT ON "agent_db_app_public".expenses TO authenticated;

