-- Deploy: schemas/agentic_db_app_public/tables/prompt_chunks/indexes/prompt_chunks_chunk_index_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompt_chunks/table
-- requires: schemas/agentic_db_app_public/tables/prompt_chunks/columns/chunk_index/column
-- requires: schemas/agentic_db_app_public/tables/prompt_chunks/indexes/prompt_chunks_embedding_text_bm25_idx


CREATE INDEX prompt_chunks_chunk_index_idx ON "agentic_db_app_public".prompt_chunks USING BTREE ( chunk_index );

