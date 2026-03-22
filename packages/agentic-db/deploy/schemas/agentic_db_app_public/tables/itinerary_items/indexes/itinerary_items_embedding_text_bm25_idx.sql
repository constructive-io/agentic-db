-- Deploy: schemas/agentic_db_app_public/tables/itinerary_items/indexes/itinerary_items_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/table
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/columns/embedding_text/column


CREATE INDEX itinerary_items_embedding_text_bm25_idx ON "agentic_db_app_public".itinerary_items USING bm25 ( embedding_text ) WITH ( text_config = english );

