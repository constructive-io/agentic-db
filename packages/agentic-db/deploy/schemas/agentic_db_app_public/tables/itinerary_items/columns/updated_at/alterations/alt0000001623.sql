-- Deploy: schemas/agentic_db_app_public/tables/itinerary_items/columns/updated_at/alterations/alt0000001623
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/table
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE "agentic_db_app_public".itinerary_items 
  ALTER COLUMN updated_at SET NOT NULL;

