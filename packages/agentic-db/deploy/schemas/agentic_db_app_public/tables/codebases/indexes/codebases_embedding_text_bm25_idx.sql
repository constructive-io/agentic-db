-- Deploy: schemas/agentic_db_app_public/tables/codebases/indexes/codebases_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebases/table
-- requires: schemas/agentic_db_app_public/tables/codebases/columns/embedding_text/column
-- requires: schemas/agentic_db_app_public/tables/projects_chunks/indexes/projects_chunks_chunk_index_idx


CREATE INDEX codebases_embedding_text_bm25_idx ON agentic_db_app_public.codebases USING bm25 ( embedding_text ) WITH ( text_config = english );

