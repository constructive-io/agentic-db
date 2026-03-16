-- Deploy: schemas/agent_db_app_public/tables/memories/indexes/memories_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/memories/table
-- requires: schemas/agent_db_app_public/tables/memories/columns/embedding_text/column
-- requires: schemas/agent_db_app_public/tables/rules/indexes/rules_embedding_text_bm25_idx


CREATE INDEX memories_embedding_text_bm25_idx ON "agent_db_app_public".memories USING bm25 ( embedding_text ) WITH ( text_config = english );

