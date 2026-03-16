-- Verify: schemas/agentic_db_app_public/tables/agent_skills/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.agent_skills', 'insert', 'authenticated');


