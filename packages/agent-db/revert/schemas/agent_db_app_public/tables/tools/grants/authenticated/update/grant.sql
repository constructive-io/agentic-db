-- Revert: schemas/agent_db_app_public/tables/tools/grants/authenticated/update/grant


REVOKE UPDATE ON agent_db_app_public.tools FROM authenticated;


