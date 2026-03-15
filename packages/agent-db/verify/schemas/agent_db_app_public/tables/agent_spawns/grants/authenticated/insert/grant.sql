-- Verify: schemas/agent_db_app_public/tables/agent_spawns/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_app_public.agent_spawns', 'insert', 'authenticated');


