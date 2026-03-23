-- Verify: schemas/agentic_db_app_public/tables/itinerary_items_chunks/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.itinerary_items_chunks', 'delete', 'authenticated');


