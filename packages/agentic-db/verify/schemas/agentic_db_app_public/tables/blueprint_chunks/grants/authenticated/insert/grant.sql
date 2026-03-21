-- Verify: schemas/agentic_db_app_public/tables/blueprint_chunks/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.blueprint_chunks', 'insert', 'authenticated');


