-- Deploy: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/touchpoints/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/columns/embedding_text/column


CREATE INDEX touchpoints_embedding_text_bm25_idx ON agentic_db_app_public.touchpoints USING bm25 ( embedding_text ) WITH ( text_config = english );

