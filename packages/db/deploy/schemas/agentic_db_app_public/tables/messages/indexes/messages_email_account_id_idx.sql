-- Deploy: schemas/agentic_db_app_public/tables/messages/indexes/messages_email_account_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_app_public/tables/messages/indexes/messages_thread_id_idx
-- requires: schemas/agentic_db_app_public/tables/messages/columns/email_account_id/column


CREATE INDEX messages_email_account_id_idx ON "agentic_db_app_public".messages USING BTREE ( email_account_id );

