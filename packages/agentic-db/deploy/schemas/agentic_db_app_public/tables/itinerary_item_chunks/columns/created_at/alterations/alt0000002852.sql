-- Deploy: schemas/agentic_db_app_public/tables/itinerary_item_chunks/columns/created_at/alterations/alt0000002852
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/itinerary_item_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx
-- requires: schemas/agentic_db_app_public/tables/itinerary_item_chunks/columns/created_at/column



ALTER TABLE agentic_db_app_public.itinerary_item_chunks 
    ALTER COLUMN created_at SET DEFAULT now();

