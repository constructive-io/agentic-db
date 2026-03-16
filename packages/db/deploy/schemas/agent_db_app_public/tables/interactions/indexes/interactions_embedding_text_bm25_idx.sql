-- Deploy: schemas/agent_db_app_public/tables/interactions/indexes/interactions_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/interactions/table
-- requires: schemas/agent_db_app_public/tables/interactions/columns/embedding_text/column
-- requires: schemas/agent_db_app_public/tables/notes/indexes/notes_embedding_text_bm25_idx


CREATE INDEX interactions_embedding_text_bm25_idx ON "agent_db_app_public".interactions USING bm25 ( embedding_text ) WITH ( text_config = english );

