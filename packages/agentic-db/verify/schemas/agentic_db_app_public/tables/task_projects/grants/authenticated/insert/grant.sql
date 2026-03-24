-- Verify: schemas/agentic_db_app_public/tables/task_projects/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.task_projects', 'insert', 'authenticated');


