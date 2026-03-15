-- Revert: schemas/agent_db_app_public/tables/agent_tools/grants/authenticated/select/grant


REVOKE SELECT ON agent_db_app_public.agent_tools FROM authenticated;


