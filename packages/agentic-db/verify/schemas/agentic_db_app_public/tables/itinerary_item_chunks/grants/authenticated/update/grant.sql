-- Verify: schemas/agentic_db_app_public/tables/itinerary_item_chunks/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.itinerary_item_chunks', 'update', 'authenticated');


