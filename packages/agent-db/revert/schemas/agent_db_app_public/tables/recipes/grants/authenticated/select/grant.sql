-- Revert: schemas/agent_db_app_public/tables/recipes/grants/authenticated/select/grant


REVOKE SELECT ON agent_db_app_public.recipes FROM authenticated;


