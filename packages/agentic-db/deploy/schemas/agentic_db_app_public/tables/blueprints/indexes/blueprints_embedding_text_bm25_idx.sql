-- Deploy: schemas/agentic_db_app_public/tables/blueprints/indexes/blueprints_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/blueprints/table
-- requires: schemas/agentic_db_app_public/tables/blueprints/columns/embedding_text/column
-- requires: schemas/agentic_db_app_public/tables/blueprints/indexes/blueprints_embedding_hnsw_idx


CREATE INDEX blueprints_embedding_text_bm25_idx ON "agentic_db_app_public".blueprints USING bm25 ( embedding_text ) WITH ( text_config = english );

