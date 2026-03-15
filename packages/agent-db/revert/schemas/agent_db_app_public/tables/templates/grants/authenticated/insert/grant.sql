-- Revert: schemas/agent_db_app_public/tables/templates/grants/authenticated/insert/grant


REVOKE INSERT ON agent_db_app_public.templates FROM authenticated;


