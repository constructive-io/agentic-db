-- Deploy: schemas/agentic_db_app_public/tables/messages/indexes/messages_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_app_public/tables/messages/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/trip_chunks/indexes/trip_chunks_trip_id_idx


CREATE INDEX messages_embedding_hnsw_idx ON "agentic_db_app_public".messages USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

