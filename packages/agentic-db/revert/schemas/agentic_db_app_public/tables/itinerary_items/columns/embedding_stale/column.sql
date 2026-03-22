-- Revert: schemas/agentic_db_app_public/tables/itinerary_items/columns/embedding_stale/column


ALTER TABLE agentic_db_app_public.itinerary_items 
  DROP COLUMN embedding_stale RESTRICT;


