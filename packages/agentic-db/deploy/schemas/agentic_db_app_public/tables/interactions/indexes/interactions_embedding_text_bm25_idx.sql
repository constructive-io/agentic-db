-- Deploy: schemas/agentic_db_app_public/tables/interactions/indexes/interactions_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interactions/table
-- requires: schemas/agentic_db_app_public/tables/interactions/columns/embedding_text/column


CREATE INDEX interactions_embedding_text_bm25_idx ON "agentic_db_app_public".interactions USING bm25 ( embedding_text ) WITH ( text_config = english );

