-- Revert: schemas/agent_db_app_public/tables/lists/grants/authenticated/select/grant


REVOKE SELECT ON agent_db_app_public.lists FROM authenticated;


