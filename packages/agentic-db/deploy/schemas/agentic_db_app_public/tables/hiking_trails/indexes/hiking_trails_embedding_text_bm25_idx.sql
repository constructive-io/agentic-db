-- Deploy: schemas/agentic_db_app_public/tables/hiking_trails/indexes/hiking_trails_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/table
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/columns/embedding_text/column


CREATE INDEX hiking_trails_embedding_text_bm25_idx ON "agentic_db_app_public".hiking_trails USING bm25 ( embedding_text ) WITH ( text_config = english );

