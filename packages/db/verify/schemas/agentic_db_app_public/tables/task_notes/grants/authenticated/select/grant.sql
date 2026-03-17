-- Verify: schemas/agentic_db_app_public/tables/task_notes/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.task_notes', 'select', 'authenticated');


