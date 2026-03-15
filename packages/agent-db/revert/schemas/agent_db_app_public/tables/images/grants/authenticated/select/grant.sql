-- Revert: schemas/agent_db_app_public/tables/images/grants/authenticated/select/grant


REVOKE SELECT ON agent_db_app_public.images FROM authenticated;


