-- Verify: schemas/agent_db_app_public/tables/task_notes/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_app_public.task_notes', 'delete', 'authenticated');


