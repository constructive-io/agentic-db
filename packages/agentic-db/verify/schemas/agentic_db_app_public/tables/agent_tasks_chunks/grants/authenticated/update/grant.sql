-- Verify: schemas/agentic_db_app_public/tables/agent_tasks_chunks/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.agent_tasks_chunks', 'update', 'authenticated');


