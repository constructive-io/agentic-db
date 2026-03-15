-- Revert: schemas/agent_db_app_public/tables/repositories/grants/authenticated/select/grant


REVOKE SELECT ON agent_db_app_public.repositories FROM authenticated;


