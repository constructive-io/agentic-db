-- Deploy: schemas/agentic_db_app_public/tables/itinerary_item_chunks/alterations/alt0000006336
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/itinerary_item_chunks/table
-- requires: schemas/agentic_db_app_public/tables/itinerary_item_chunks/columns/embedding_text/column


COMMENT ON TABLE agentic_db_app_public.itinerary_item_chunks IS E'@@searchConfig {"weights": {"bm25": 1.0}, "bm25_field": "embedding_text", "bm25_text_config": "english"}';

