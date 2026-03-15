-- Deploy: schemas/agent_db_app_public/tables/calendar_accounts/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_accounts/table
-- requires: schemas/agent_db_app_public/tables/messages/columns/embedding/column


GRANT INSERT ON agent_db_app_public.calendar_accounts TO authenticated;

