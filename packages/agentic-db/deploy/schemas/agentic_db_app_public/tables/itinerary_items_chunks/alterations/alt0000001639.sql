-- Deploy: schemas/agentic_db_app_public/tables/itinerary_items_chunks/alterations/alt0000001639
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/itinerary_items_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


COMMENT ON TABLE "agentic_db_app_public".itinerary_items_chunks IS E'@@chunksOf {"parent_fk": "itinerary_items_id", "parent_table": "itinerary_items"}';

