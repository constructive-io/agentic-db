-- Deploy: schemas/agent_db_app_public/tables/messages/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/messages/table
-- requires: schemas/agent_db_app_public/tables/email_accounts/columns/sync_state/column


GRANT INSERT ON agent_db_app_public.messages TO authenticated;

