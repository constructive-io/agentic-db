-- Revert: schemas/agent_db_app_public/tables/chunks/grants/authenticated/delete/grant


REVOKE DELETE ON agent_db_app_public.chunks FROM authenticated;


