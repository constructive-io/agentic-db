-- Deploy: schemas/agentic_db_app_public/tables/threads/indexes/threads_status_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/threads/table
-- requires: schemas/agentic_db_app_public/tables/threads/columns/status/column
-- requires: schemas/agentic_db_app_public/tables/chat_messages/indexes/chat_messages_role_idx


CREATE INDEX threads_status_idx ON "agentic_db_app_public".threads USING BTREE ( status );

