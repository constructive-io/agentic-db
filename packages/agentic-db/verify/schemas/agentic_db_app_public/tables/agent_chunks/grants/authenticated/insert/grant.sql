-- Verify: schemas/agentic_db_app_public/tables/agent_chunks/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.agent_chunks', 'insert', 'authenticated');


