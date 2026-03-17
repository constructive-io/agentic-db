-- Deploy: schemas/agentic_db_app_public/tables/ideas/indexes/ideas_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/ideas/table
-- requires: schemas/agentic_db_app_public/tables/ideas/columns/embedding_text/column
-- requires: schemas/agentic_db_app_public/tables/trips/indexes/trips_embedding_text_bm25_idx


CREATE INDEX ideas_embedding_text_bm25_idx ON "agentic_db_app_public".ideas USING bm25 ( embedding_text ) WITH ( text_config = english );

