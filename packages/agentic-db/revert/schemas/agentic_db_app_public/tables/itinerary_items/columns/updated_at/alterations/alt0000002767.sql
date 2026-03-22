-- Revert: schemas/agentic_db_app_public/tables/itinerary_items/columns/updated_at/alterations/alt0000002767




ALTER TABLE agentic_db_app_public.itinerary_items 
    ALTER COLUMN updated_at DROP DEFAULT;



