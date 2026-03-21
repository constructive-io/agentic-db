-- Deploy: schemas/agentic_db_app_public/tables/chats/indexes/chats_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chats/table
-- requires: schemas/agentic_db_app_public/tables/chats/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/execution_log/columns/duration_ms/column


CREATE INDEX chats_entity_id_idx ON agentic_db_app_public.chats USING BTREE ( entity_id );

