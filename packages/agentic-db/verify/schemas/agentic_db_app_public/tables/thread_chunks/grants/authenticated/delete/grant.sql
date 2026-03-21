-- Verify: schemas/agentic_db_app_public/tables/thread_chunks/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.thread_chunks', 'delete', 'authenticated');


