-- Revert: schemas/agent_db_app_public/tables/list_items/grants/authenticated/delete/grant


REVOKE DELETE ON agent_db_app_public.list_items FROM authenticated;


