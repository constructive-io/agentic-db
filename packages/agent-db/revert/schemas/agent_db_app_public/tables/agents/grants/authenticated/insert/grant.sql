-- Revert: schemas/agent_db_app_public/tables/agents/grants/authenticated/insert/grant


REVOKE INSERT ON agent_db_app_public.agents FROM authenticated;


