-- Deploy: schemas/agentic_db_app_public/tables/runtime_states/indexes/runtime_states_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_states/table
-- requires: schemas/agentic_db_app_public/tables/runtime_states/columns/embedding_text/column
-- requires: schemas/agentic_db_app_public/tables/tool_definitions_chunks/indexes/tool_definitions_chunks_chunk_index_idx


CREATE INDEX runtime_states_embedding_text_bm25_idx ON agentic_db_app_public.runtime_states USING bm25 ( embedding_text ) WITH ( text_config = english );

