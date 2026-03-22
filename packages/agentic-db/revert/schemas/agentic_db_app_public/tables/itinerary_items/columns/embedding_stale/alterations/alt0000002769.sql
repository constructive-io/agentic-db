-- Revert: schemas/agentic_db_app_public/tables/itinerary_items/columns/embedding_stale/alterations/alt0000002769


ALTER TABLE agentic_db_app_public.itinerary_items 
  ALTER COLUMN embedding_stale DROP NOT NULL;


