-- Revert: schemas/agent_db_app_public/tables/workflows/grants/authenticated/select/grant


REVOKE SELECT ON agent_db_app_public.workflows FROM authenticated;


