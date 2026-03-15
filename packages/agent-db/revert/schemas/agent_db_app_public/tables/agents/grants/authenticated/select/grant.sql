-- Revert: schemas/agent_db_app_public/tables/agents/grants/authenticated/select/grant


REVOKE SELECT ON agent_db_app_public.agents FROM authenticated;


