-- Deploy: schemas/agentic_db_app_public/tables/memories/indexes/memories_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/embedding_text/column
-- requires: schemas/agentic_db_app_public/tables/memories/indexes/memories_embedding_hnsw_idx


CREATE INDEX memories_embedding_text_bm25_idx ON agentic_db_app_public.memories USING bm25 ( embedding_text ) WITH ( text_config = english );

