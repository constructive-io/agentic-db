-- Deploy: schemas/agentic_db_app_public/tables/session_archives/indexes/session_archives_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/session_archives/table
-- requires: schemas/agentic_db_app_public/tables/session_archives/columns/embedding_text/column
-- requires: schemas/agentic_db_app_public/tables/session_archives/indexes/session_archives_embedding_hnsw_idx


CREATE INDEX session_archives_embedding_text_bm25_idx ON agentic_db_app_public.session_archives USING bm25 ( embedding_text ) WITH ( text_config = english );

