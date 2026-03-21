-- Verify: schemas/agentic_db_app_public/tables/task_notes/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.task_notes', 'insert', 'authenticated');


