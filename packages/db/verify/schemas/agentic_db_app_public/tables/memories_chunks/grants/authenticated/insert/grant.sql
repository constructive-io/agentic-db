-- Verify: schemas/agentic_db_app_public/tables/memories_chunks/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.memories_chunks', 'insert', 'authenticated');


