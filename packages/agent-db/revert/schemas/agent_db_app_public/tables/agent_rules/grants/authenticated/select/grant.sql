-- Revert: schemas/agent_db_app_public/tables/agent_rules/grants/authenticated/select/grant


REVOKE SELECT ON agent_db_app_public.agent_rules FROM authenticated;


