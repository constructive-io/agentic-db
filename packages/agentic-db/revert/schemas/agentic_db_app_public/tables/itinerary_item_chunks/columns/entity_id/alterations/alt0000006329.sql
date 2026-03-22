-- Revert: schemas/agentic_db_app_public/tables/itinerary_item_chunks/columns/entity_id/alterations/alt0000006329


ALTER TABLE agentic_db_app_public.itinerary_item_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


