-- Revert: schemas/agent_db_app_public/tables/skills/grants/authenticated/select/grant


REVOKE SELECT ON agent_db_app_public.skills FROM authenticated;


