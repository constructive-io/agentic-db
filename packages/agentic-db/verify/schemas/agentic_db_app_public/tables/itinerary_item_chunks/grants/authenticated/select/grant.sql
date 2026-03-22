-- Verify: schemas/agentic_db_app_public/tables/itinerary_item_chunks/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.itinerary_item_chunks', 'select', 'authenticated');


