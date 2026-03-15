-- Revert: schemas/agent_db_app_public/tables/agent_tools/grants/authenticated/insert/grant


REVOKE INSERT ON agent_db_app_public.agent_tools FROM authenticated;


