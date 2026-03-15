-- Revert: schemas/agent_db_app_public/tables/tools/grants/authenticated/insert/grant


REVOKE INSERT ON agent_db_app_public.tools FROM authenticated;


