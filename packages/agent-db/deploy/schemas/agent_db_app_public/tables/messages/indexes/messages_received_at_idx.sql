-- Deploy: schemas/agent_db_app_public/tables/messages/indexes/messages_received_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/messages/table
-- requires: schemas/agent_db_app_public/tables/messages/columns/received_at/column
-- requires: schemas/agent_db_app_public/tables/email_accounts/indexes/email_accounts_email_idx


CREATE INDEX messages_received_at_idx ON agent_db_app_public.messages USING BTREE ( received_at );

