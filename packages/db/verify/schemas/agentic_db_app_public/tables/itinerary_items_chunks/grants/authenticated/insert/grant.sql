-- Verify: schemas/agentic_db_app_public/tables/itinerary_items_chunks/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.itinerary_items_chunks', 'insert', 'authenticated');


