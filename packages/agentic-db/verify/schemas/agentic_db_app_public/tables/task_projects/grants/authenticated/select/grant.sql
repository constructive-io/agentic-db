-- Verify: schemas/agentic_db_app_public/tables/task_projects/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.task_projects', 'select', 'authenticated');


