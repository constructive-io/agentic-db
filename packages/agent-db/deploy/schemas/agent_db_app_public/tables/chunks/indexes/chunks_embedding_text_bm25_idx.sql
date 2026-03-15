-- Deploy: schemas/agent_db_app_public/tables/chunks/indexes/chunks_embedding_text_bm25_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chunks/table
-- requires: schemas/agent_db_app_public/tables/chunks/columns/embedding_text/column
-- requires: schemas/agent_db_app_public/tables/repositories/indexes/repositories_embedding_text_bm25_idx


CREATE INDEX chunks_embedding_text_bm25_idx ON agent_db_app_public.chunks USING bm25 ( embedding_text ) WITH ( text_config = english );

