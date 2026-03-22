-- Verify: schemas/agentic_db_app_public/tables/agent_logs/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.agent_logs', 'delete', 'authenticated');


