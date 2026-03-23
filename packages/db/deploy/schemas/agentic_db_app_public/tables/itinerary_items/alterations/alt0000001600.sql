-- Deploy: schemas/agentic_db_app_public/tables/itinerary_items/alterations/alt0000001600
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


COMMENT ON TABLE "agentic_db_app_public".itinerary_items IS E'@@hasChunks {"chunks_table": "itinerary_items_chunks", "embedding_field": "embedding"}\\n@@searchConfig {"weights": {"bm25": 1.0}, "bm25_field": "embedding_text", "bm25_text_config": "english"}';

