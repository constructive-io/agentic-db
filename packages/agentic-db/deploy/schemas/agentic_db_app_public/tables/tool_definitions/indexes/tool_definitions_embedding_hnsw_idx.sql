-- Deploy: schemas/agentic_db_app_public/tables/tool_definitions/indexes/tool_definitions_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/table
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx


CREATE INDEX tool_definitions_embedding_hnsw_idx ON agentic_db_app_public.tool_definitions USING hnsw ( embedding vector_cosine_ops );

