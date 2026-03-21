-- Deploy: schemas/agentic_db_app_public/tables/messages/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_app_public/tables/email_accounts/columns/sync_state/column


GRANT SELECT ON agentic_db_app_public.messages TO authenticated;

