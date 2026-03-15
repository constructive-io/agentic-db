-- Deploy: schemas/agent_db_app_public/tables/calendar_sync/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_sync/table
-- requires: schemas/agent_db_app_public/tables/messages/columns/embedding/column


GRANT UPDATE ON "agent_db_app_public".calendar_sync TO authenticated;

