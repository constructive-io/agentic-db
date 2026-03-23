-- Verify: schemas/agentic_db_app_public/tables/itinerary_items/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.itinerary_items', 'insert', 'authenticated');


