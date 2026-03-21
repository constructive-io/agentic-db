-- Deploy: schemas/agentic_db_app_public/tables/messages/indexes/messages_tags_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_app_public/tables/messages/columns/tags/column
-- requires: schemas/agentic_db_app_public/tables/trip_chunks/indexes/trip_chunks_chunk_index_idx


CREATE INDEX messages_tags_gin_idx ON "agentic_db_app_public".messages USING GIN ( tags );

