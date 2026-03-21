-- Verify: schemas/agentic_db_app_public/tables/task_chunks/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.task_chunks', 'delete', 'authenticated');


