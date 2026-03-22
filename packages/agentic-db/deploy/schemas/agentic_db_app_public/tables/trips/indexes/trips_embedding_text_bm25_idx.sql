-- Deploy: schemas/agentic_db_app_public/tables/trips/indexes/trips_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips/table
-- requires: schemas/agentic_db_app_public/tables/trips/columns/embedding_text/column


CREATE INDEX trips_embedding_text_bm25_idx ON "agentic_db_app_public".trips USING bm25 ( embedding_text ) WITH ( text_config = english );

