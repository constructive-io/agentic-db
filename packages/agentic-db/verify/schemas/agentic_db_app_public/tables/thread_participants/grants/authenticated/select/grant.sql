-- Verify: schemas/agentic_db_app_public/tables/thread_participants/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.thread_participants', 'select', 'authenticated');


