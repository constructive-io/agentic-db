-- Deploy: schemas/agentic_db_app_public/tables/chats/indexes/chats_started_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chats/table
-- requires: schemas/agentic_db_app_public/tables/chats/columns/started_at/column
-- requires: schemas/agentic_db_app_public/tables/sessions/indexes/sessions_compression_count_idx


CREATE INDEX chats_started_at_idx ON "agentic_db_app_public".chats USING BTREE ( started_at );

