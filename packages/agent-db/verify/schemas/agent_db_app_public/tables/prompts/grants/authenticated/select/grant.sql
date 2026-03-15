-- Verify: schemas/agent_db_app_public/tables/prompts/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_app_public.prompts', 'select', 'authenticated');


