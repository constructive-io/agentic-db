-- Verify: schemas/agentic_db_app_public/tables/task_projects/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.task_projects', 'delete', 'authenticated');


