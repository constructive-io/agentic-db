-- Revert: schemas/agent_db_app_public/tables/agent_spawns/grants/authenticated/insert/grant


REVOKE INSERT ON agent_db_app_public.agent_spawns FROM authenticated;


