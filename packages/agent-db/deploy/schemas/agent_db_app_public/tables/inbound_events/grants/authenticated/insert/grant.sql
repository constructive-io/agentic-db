-- Deploy: schemas/agent_db_app_public/tables/inbound_events/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/inbound_events/table
-- requires: schemas/agent_db_app_public/tables/tasks/columns/approved_at/column


GRANT INSERT ON agent_db_app_public.inbound_events TO authenticated;

