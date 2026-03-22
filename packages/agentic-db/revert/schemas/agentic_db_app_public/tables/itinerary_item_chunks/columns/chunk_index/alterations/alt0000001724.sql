-- Revert: schemas/agentic_db_app_public/tables/itinerary_item_chunks/columns/chunk_index/alterations/alt0000001724


ALTER TABLE "agentic_db_app_public".itinerary_item_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


