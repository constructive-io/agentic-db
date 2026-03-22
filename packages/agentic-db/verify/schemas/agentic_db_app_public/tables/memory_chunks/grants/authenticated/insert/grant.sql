-- Verify: schemas/agentic_db_app_public/tables/memory_chunks/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.memory_chunks', 'insert', 'authenticated');


