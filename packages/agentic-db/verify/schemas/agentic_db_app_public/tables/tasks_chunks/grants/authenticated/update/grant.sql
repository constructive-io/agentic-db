-- Verify: schemas/agentic_db_app_public/tables/tasks_chunks/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.tasks_chunks', 'update', 'authenticated');


