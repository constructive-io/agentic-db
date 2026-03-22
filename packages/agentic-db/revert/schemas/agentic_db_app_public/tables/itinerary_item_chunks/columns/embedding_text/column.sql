-- Revert: schemas/agentic_db_app_public/tables/itinerary_item_chunks/columns/embedding_text/column


ALTER TABLE agentic_db_app_public.itinerary_item_chunks 
  DROP COLUMN embedding_text RESTRICT;


