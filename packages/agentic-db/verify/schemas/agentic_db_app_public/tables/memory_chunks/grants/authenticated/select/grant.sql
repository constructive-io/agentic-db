-- Verify: schemas/agentic_db_app_public/tables/memory_chunks/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.memory_chunks', 'select', 'authenticated');


