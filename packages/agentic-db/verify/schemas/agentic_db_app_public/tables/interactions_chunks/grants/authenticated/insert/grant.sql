-- Verify: schemas/agentic_db_app_public/tables/interactions_chunks/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.interactions_chunks', 'insert', 'authenticated');


