-- Deploy: schemas/agentic_db_app_public/tables/itinerary_items_chunks/columns/metadata/alterations/alt0000001597
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/itinerary_items_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx
-- requires: schemas/agentic_db_app_public/tables/itinerary_items_chunks/columns/metadata/column



ALTER TABLE "agentic_db_app_public".itinerary_items_chunks 
    ALTER COLUMN metadata SET DEFAULT '{}'::jsonb;

