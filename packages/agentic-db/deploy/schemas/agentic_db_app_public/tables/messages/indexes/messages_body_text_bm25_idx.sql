-- Deploy: schemas/agentic_db_app_public/tables/messages/indexes/messages_body_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_app_public/tables/messages/columns/body_text/column
-- requires: schemas/agentic_db_app_public/tables/trips/indexes/trips_embedding_text_bm25_idx


CREATE INDEX messages_body_text_bm25_idx ON "agentic_db_app_public".messages USING bm25 ( body_text ) WITH ( text_config = english );

