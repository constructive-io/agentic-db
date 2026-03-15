-- Deploy: schemas/agent_db_app_public/tables/blueprints/indexes/blueprints_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/blueprints/table
-- requires: schemas/agent_db_app_public/tables/blueprints/columns/embedding_text/column
-- requires: schemas/agent_db_app_public/tables/threads/indexes/threads_embedding_text_bm25_idx


CREATE INDEX blueprints_embedding_text_bm25_idx ON agent_db_app_public.blueprints USING bm25 ( embedding_text ) WITH ( text_config = english );

