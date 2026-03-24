-- Verify: schemas/agentic_db_app_public/tables/tasks_chunks/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.tasks_chunks', 'select', 'authenticated');


