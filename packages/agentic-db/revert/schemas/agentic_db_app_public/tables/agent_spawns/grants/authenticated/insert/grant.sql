-- Revert: schemas/agentic_db_app_public/tables/agent_spawns/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.agent_spawns FROM authenticated;


