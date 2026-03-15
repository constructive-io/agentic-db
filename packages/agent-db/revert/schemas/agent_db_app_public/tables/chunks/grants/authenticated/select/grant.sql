-- Revert: schemas/agent_db_app_public/tables/chunks/grants/authenticated/select/grant


REVOKE SELECT ON agent_db_app_public.chunks FROM authenticated;


