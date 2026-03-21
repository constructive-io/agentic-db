-- Verify: schemas/agentic_db_app_public/tables/task_chunks/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.task_chunks', 'update', 'authenticated');


