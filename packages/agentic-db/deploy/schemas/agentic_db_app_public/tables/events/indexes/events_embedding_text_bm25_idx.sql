-- Deploy: schemas/agentic_db_app_public/tables/events/indexes/events_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events/table
-- requires: schemas/agentic_db_app_public/tables/events/columns/main_image_id/column
-- requires: schemas/agentic_db_app_public/tables/events/columns/embedding_text/column


CREATE INDEX events_embedding_text_bm25_idx ON "agentic_db_app_public".events USING bm25 ( embedding_text ) WITH ( text_config = english );

