-- Revert: schemas/agent_db_app_public/tables/workflows/grants/authenticated/delete/grant


REVOKE DELETE ON agent_db_app_public.workflows FROM authenticated;


