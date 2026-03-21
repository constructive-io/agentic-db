-- Verify: schemas/agentic_db_app_public/tables/thread_chunks/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.thread_chunks', 'update', 'authenticated');


