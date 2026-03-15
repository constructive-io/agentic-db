-- Deploy: schemas/agent_db_app_public/tables/calendar_accounts/indexes/calendar_accounts_email_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_accounts/table
-- requires: schemas/agent_db_app_public/tables/calendar_accounts/columns/email/column
-- requires: schemas/agent_db_app_public/tables/messages/indexes/messages_email_account_id_idx


CREATE INDEX calendar_accounts_email_idx ON agent_db_app_public.calendar_accounts USING BTREE ( email );

