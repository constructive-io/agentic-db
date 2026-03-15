-- Verify: schemas/agent_db_app_public/tables/agent_spawns/indexes/agent_spawns_parent_agent_id_idx


SELECT verify_index('agent_db_app_public.agent_spawns', 'agent_spawns_parent_agent_id_idx');


