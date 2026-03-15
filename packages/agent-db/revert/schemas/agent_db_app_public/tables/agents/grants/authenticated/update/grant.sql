-- Revert: schemas/agent_db_app_public/tables/agents/grants/authenticated/update/grant


REVOKE UPDATE ON agent_db_app_public.agents FROM authenticated;


