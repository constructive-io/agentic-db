-- Revert: schemas/agentic_db_app_public/tables/itinerary_items/columns/trip_id/alterations/alt0000002762


ALTER TABLE agentic_db_app_public.itinerary_items 
  ALTER COLUMN trip_id DROP NOT NULL;


