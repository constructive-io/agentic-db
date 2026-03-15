-- Revert: schemas/agent_db_app_public/tables/images/grants/authenticated/insert/grant


REVOKE INSERT ON agent_db_app_public.images FROM authenticated;


