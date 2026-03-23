-- Verify: schemas/agentic_db_app_public/tables/memories_chunks/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.memories_chunks', 'select', 'authenticated');


