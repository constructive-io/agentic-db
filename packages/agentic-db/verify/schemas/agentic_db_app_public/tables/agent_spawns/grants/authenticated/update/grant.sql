-- Verify: schemas/agentic_db_app_public/tables/agent_spawns/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.agent_spawns', 'update', 'authenticated');


