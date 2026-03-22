-- Verify: schemas/agentic_db_app_public/tables/venues/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.venues', 'insert', 'authenticated');


