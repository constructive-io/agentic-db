-- Deploy: schemas/agentic_db_app_public/tables/repositories/indexes/repositories_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/repositories/table
-- requires: schemas/agentic_db_app_public/tables/repositories/columns/embedding_text/column
-- requires: schemas/agentic_db_app_public/tables/repositories/indexes/repositories_embedding_hnsw_idx


CREATE INDEX repositories_embedding_text_bm25_idx ON agentic_db_app_public.repositories USING bm25 ( embedding_text ) WITH ( text_config = english );

