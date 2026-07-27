-- Deploy: schemas/agentic_db_app_public/tables/places/indexes/places_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/places/table
-- requires: schemas/agentic_db_app_public/tables/places/columns/embedding_text/column


CREATE INDEX places_embedding_text_bm25_idx ON agentic_db_app_public.places USING bm25 ( embedding_text ) WITH ( text_config = english );

