-- Verify: schemas/agentic_db_app_public/tables/agent_tasks/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.agent_tasks', 'insert', 'authenticated');


