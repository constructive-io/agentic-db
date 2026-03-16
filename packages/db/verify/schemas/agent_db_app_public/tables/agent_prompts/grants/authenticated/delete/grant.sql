-- Verify: schemas/agent_db_app_public/tables/agent_prompts/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_app_public.agent_prompts', 'delete', 'authenticated');


