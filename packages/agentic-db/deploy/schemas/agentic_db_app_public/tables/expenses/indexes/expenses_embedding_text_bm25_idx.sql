-- Deploy: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expenses/table
-- requires: schemas/agentic_db_app_public/tables/expenses/columns/embedding_text/column
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


CREATE INDEX expenses_embedding_text_bm25_idx ON "agentic_db_app_public".expenses USING bm25 ( embedding_text ) WITH ( text_config = english );

