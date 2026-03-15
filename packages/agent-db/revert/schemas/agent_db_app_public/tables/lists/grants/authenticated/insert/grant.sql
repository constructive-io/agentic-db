-- Revert: schemas/agent_db_app_public/tables/lists/grants/authenticated/insert/grant


REVOKE INSERT ON agent_db_app_public.lists FROM authenticated;


