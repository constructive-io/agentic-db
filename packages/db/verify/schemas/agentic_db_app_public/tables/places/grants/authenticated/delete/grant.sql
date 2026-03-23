-- Verify: schemas/agentic_db_app_public/tables/places/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.places', 'delete', 'authenticated');


