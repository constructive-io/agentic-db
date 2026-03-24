-- Revert: schemas/agentic_db_app_public/tables/itinerary_items_chunks/columns/chunk_index/alterations/alt0000002957


ALTER TABLE agentic_db_app_public.itinerary_items_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


