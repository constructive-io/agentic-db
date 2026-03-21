-- Verify: schemas/agentic_db_app_public/tables/thread_chunks/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.thread_chunks', 'select', 'authenticated');


