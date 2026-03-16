-- Verify: schemas/agent_db_app_public/tables/prompts/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_app_public.prompts', 'insert', 'authenticated');


