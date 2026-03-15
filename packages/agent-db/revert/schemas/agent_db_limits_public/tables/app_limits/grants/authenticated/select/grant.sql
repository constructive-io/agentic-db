-- Revert: schemas/agent_db_limits_public/tables/app_limits/grants/authenticated/select/grant


REVOKE SELECT ON agent_db_limits_public.app_limits FROM authenticated;


