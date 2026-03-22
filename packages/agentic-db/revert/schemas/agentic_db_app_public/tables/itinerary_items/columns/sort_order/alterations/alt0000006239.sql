-- Revert: schemas/agentic_db_app_public/tables/itinerary_items/columns/sort_order/alterations/alt0000006239




ALTER TABLE agentic_db_app_public.itinerary_items 
    ALTER COLUMN sort_order DROP DEFAULT;



