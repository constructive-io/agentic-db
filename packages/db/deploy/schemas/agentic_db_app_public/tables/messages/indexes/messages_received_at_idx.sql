-- Deploy: schemas/agentic_db_app_public/tables/messages/indexes/messages_received_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_app_public/tables/messages/columns/received_at/column
-- requires: schemas/agentic_db_app_public/tables/email_accounts/indexes/email_accounts_email_idx


CREATE INDEX messages_received_at_idx ON "agentic_db_app_public".messages USING BTREE ( received_at );

