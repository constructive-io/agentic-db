-- Verify: schemas/agentic_db_app_public/tables/itinerary_item_chunks/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.itinerary_item_chunks', 'insert', 'authenticated');


